defmodule Mix.Tasks.ProviderLookup.Pull do
  use Mix.Task

  @shortdoc "Download NPI data files from NPPES onto the local machine"
  @moduledoc """
  Download NPI data files from NPPES onto the local machine

        $ mix provider_lookup.pull
        $ mix provider_lookup.pull -f
        $ mix provider_lookup.pull -f -c other.txt


  ## Options

      * `-f, --force` - force update of csv files. Defaults to false

      * `-c, --curr` - filename for current version file.
        Defaults to `curr.txt`

  """
  @url "https://download.cms.gov/nppes/"
  @default_curr "curr.txt"

  @doc false
  def run(args) do
    switches = [force: :boolean, curr: :string]
    {opts, _, _} = OptionParser.parse(args, switches: switches, aliases: [f: :force, c: :curr])
    force? = opts[:force] || false
    curr = opts[:curr] || @default_curr
    Mix.shell().info("Pulling data...")
    content = mkdir_or_read(curr)

    case get_file() do
      {:error, reason} ->
        shell_error(reason)

      {:ok, filename} ->
        Mix.shell().info("Found, #{inspect(filename)}")

        if content == filename and not force? do
          Mix.shell().info("Already up to date. No further action needed.")
        else
          # Download the file from the server
          url = @url <> filename
          Mix.shell().info("Downloading #{inspect(url)}")

          case download(url) do
            {:ok, _} ->
              # write the updated filename to the current version file
              File.write!(curr, filename)
              Mix.shell().info([:green, "Done"])

            {:error, reason} ->
              shell_error(reason)
          end
        end
    end
  end

  def get_file() do
    body = scrape_page()
    process_body(body)
  end

  def scrape_page() do
    HTTPoison.start()
    url = "https://download.cms.gov/nppes/NPI_Files.html"
    %{body: body} = HTTPoison.get!(url)
    body
  end

  def process_body(body) do
    {:ok, document} = Floki.parse_document(body)

    filename =
      document
      |> Floki.find("a")
      |> Floki.attribute("href")
      |> Enum.flat_map(fn value ->
        case value do
          "./" <> rest -> [rest]
          _ -> []
        end
      end)
      |> Enum.at(0)

    if filename do
      {:ok, filename}
    else
      {:error, "No matching files found on page."}
    end
  end

  def mkdir_or_read(path) when is_binary(path) do
    if File.exists?(path) do
      # read current filename
      File.read!(path)
    else
      # create the file if doesn't exist
      File.mkdir_p!(Path.dirname(path))
      File.write!(path, '')
      ''
    end
  end

  def download(url) do
    # Create folder if doesn't exist
    %{body: body} = HTTPoison.get!(url)
    dir = "data"

    if not File.exists?(dir) do
      File.mkdir!(dir)
    end

    # Writing the zip file
    shell_info("Writing zip file..")
    path = dir <> "/npi.zip"

    File.mkdir_p!(Path.dirname(path))
    File.write!(path, body)
    {:ok, "success"}

    # Extract zip
    shell_info("Unzipping..")

    zip_file = Unzip.LocalFile.open(path)
    {:ok, unzip} = Unzip.new(zip_file)

    unzip
    |> Unzip.list_entries()
    |> Enum.reduce(0, fn %Unzip.Entry{file_name: file_name}, acc ->
      if String.match?(file_name, ~r/npidata_pfile_(\d+)-(\d+).csv/) do
        shell_info("Found npi data file, moving..")
        stream = Unzip.file_stream!(unzip, file_name)

        stream
        |> Stream.into(File.stream!("data/npi.csv"))
        |> Stream.run()

        1 + acc
      else
        if String.match?(file_name, ~r/pl_pfile_(\d+)-(\d+).csv/) do
          shell_info("Found pl data file, moving..")
          stream = Unzip.file_stream!(unzip, file_name)

          stream
          |> Stream.into(File.stream!("data/pl.csv"))
          |> Stream.run()

          1 + acc
        else
          acc
        end
      end
    end)
    |> case do
      2 ->
        File.rm!(path)
        Mix.shell().info([:green, "Successfully retrieved files!"])
        {:ok, "success"}

      _ ->
        {:error, "Couldn't find both pl and npi files"}
    end
  end

  defp shell_info(body) do
    Mix.shell().info(body)
  end

  defp shell_error(body) do
    Mix.shell().error(body)
  end
end
