defmodule ProviderLookupWeb.ViewHelpers do
  @moduledoc false
  use PhoenixHTMLHelpers

  def replace_phone(phone) do
    case ExPhoneNumber.parse(phone, "US") do
      {:ok, phone_number} ->
        ExPhoneNumber.format(phone_number, :national)

      {:error, _reason} ->
        phone
    end
  end

  def get_order_params(%URI{} = uri, order_key) do
    (uri.query || "")
    |> URI.decode_query()
    |> Map.take(["order_by"])
    |> Map.new()
    |> Map.update(
      "order_by",
      order_key,
      &case &1 do
        "-" <> ^order_key -> order_key
        ^order_key -> "-" <> order_key
        _ -> "-" <> order_key
      end
    )
  end

  def get_order_params(_, order_key) do
    %{"order_by" => order_key}
  end

  def get_order(%URI{} = uri, order_key) do
    (uri.query || "")
    |> URI.decode_query()
    |> Map.take(["order_by"])
    |> Map.get("order_by")
    |> case do
      "-" <> ^order_key -> :desc
      ^order_key -> :asc
      _ -> :noop
    end
  end

  def get_order(_, _order_key), do: :noop

  @doc """
  Rebuild URL with new params and return final URL as string

  params accepts map or keyword list, atom keys will be converted to string and remove duplicated
  """
  def current_url(%URI{} = uri, params) do
    new_params =
      params
      |> Enum.reduce(%{}, fn {k, v}, acc ->
        if k == "filter" do
          Enum.reduce(v, %{}, fn {k1, v1}, acc1 ->
            Map.put(acc1, "#{k}[#{k1}]", v1)
          end)
        else
          Map.put(acc, k, v)
        end
      end)

    query =
      (uri.query || "")
      |> URI.decode_query()
      |> Map.merge(Map.new(new_params, fn {k, v} -> {to_string(k), v} end))
      |> URI.encode_query()

    URI.to_string(%{uri | query: query})
  end

  def current_url(url, params) when is_binary(url) do
    url
    |> URI.parse()
    |> current_url(params)
  end

  def current_path(uri, params) do
    uri = uri |> current_url(params) |> URI.parse()
    Enum.join([uri.path, uri.query], "?")
  end
end
