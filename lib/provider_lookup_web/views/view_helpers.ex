defmodule ProviderLookupWeb.ViewHelpers do
  import Phoenix.HTML
  use Phoenix.HTML

  @spec get_query_params(map, list) :: list
  def get_query_params(params, allowed_keys) do
    params |> Map.take(allowed_keys) |> Enum.map(fn {k, v} -> {String.to_atom(k), v} end)
  end

  def replace_phone(phone) do
    {:ok, phone_number} = ExPhoneNumber.parse(phone, "US")
    ExPhoneNumber.format(phone_number, :national)
  end

  def get_order_params(params, allowed_keys, order_key) do
    params
    |> Map.take(allowed_keys ++ ["order_by"])
    |> Enum.map(fn {k, v} -> {String.to_atom(k), v} end)
    |> Map.new()
    |> Map.update(
      :order_by,
      order_key,
      &case &1 do
        "-" <> ^order_key -> order_key
        ^order_key -> "-" <> order_key
        _ -> "-" <> order_key
      end
    )
  end

  def create_order_url(conn, field_name, ignore \\ ["filter"]) do
    Phoenix.Controller.current_url(conn, get_order_params(conn.params, ignore, field_name))
  end

  def replace_attr(attr) do
    Regex.replace(~r/[^A-Za-z0-9,]+/, attr, "")
  end

  def location(id) do
    "document.location = '/#{id}';"
  end
end
