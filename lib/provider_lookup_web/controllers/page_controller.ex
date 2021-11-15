defmodule ProviderLookupWeb.PageController do
  use ProviderLookupWeb, :controller

  alias ProviderLookup.Medical
  alias ProviderLookup.Medical.CoreNpi
  alias ProviderLookupWeb.QueryFilterEx

  @core_npi_filters [
    %{name: :last_name, type: :string, binding: :core_npi, field_name: :last_name, method: :eq},
    %{name: :first_name, type: :string, binding: :core_npi, field_name: :first_name, method: :eq},
    %{name: :city, type: :string, binding: :core_npi, field_name: :city, method: :eq},
    %{name: :state, type: :string, binding: :core_npi, field_name: :state, method: :eq},
    %{name: :zip, type: :string, binding: :core_npi, field_name: :zip, method: :eq},
    %{
      name: :description,
      type: :string,
      binding: :core_npi,
      field_name: :description,
      method: :eq
    }
  ]

  @core_npi_sort_fields [
    "core_npi__last_name",
    "core_npi__first_name",
    "core_npi__description"
  ]
  def index(conn, _params) do
    changeset = Medical.change_core_npi(%CoreNpi{})
    render(conn, "index.html", changeset: changeset)
  end

  def search(conn, %{
        "filter" => %{
          "last_name" => "",
          "first_name" => "",
          "city" => "",
          "state" => "",
          "zip" => "",
          "description" => ""
        }
      }) do
    conn
    |> put_flash(:error, "Please enter search parameters.")
    |> redirect(to: Routes.page_path(conn, :index))
  end

  def search(conn, params) do
    new_params =
      params
      |> Enum.map(fn {k, v} ->
        if k == "filter" do
          {k,
           Enum.map(v, fn {k1, v1} ->
             {k1, String.upcase(v1)}
           end)
           |> Enum.into(%{})}
        else
          {k, v}
        end
      end)
      |> Enum.into(%{})

    changeset = QueryFilterEx.get_changeset_from_params(new_params, @core_npi_filters)

    page =
      from(cn in CoreNpi,
        as: :core_npi
      )
      |> QueryFilterEx.filter(changeset, @core_npi_filters)
      |> QueryFilterEx.sort_by_params(new_params, @core_npi_sort_fields)
      |> ProviderLookup.Repo.paginate(new_params)

    render(conn, "search.html",
      page: page,
      result: page.entries,
      changeset: changeset
    )
  end

  def show(conn, %{"id" => id}) do
    core_npi = Medical.get_core_npi!(id)
    npi = Medical.get_npi_by_npi(core_npi.npi)
    addr_first1 = Regex.replace(~r/[^A-Za-z0-9,]+/, core_npi.addr_first, "")

    url =
      "https://www.google.com/maps/embed/v1/place?q=" <>
        addr_first1 <> "+" <> core_npi.zip <> "&key=AIzaSyCRQo5-Xt3cUiMbhQE91-Pa-VzfTMpP8SU"

    render(conn, "show.html", id: id, npi: npi, core_npi: core_npi, url: url)
  end
end
