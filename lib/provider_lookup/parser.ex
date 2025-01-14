defmodule ProviderLookup.Parser do
  @moduledoc """
  Contains functions to parse some raw data from CSV files
  """

  require Logger

  def parse_integer(integer_string) do
    case Integer.parse(integer_string) do
      :error ->
        # Logger.debug(fn ->
        #   "[ProviderLookup] bad integer value: [#{integer_string}]"
        # end)
        nil

      {integer, _} ->
        integer
    end
  end

  def parse_date(date_string) do
    case date_string do
      "" ->
        nil

      _ ->
        [month, day, year] =
          date_string
          |> String.replace(~r/\//, "-")
          |> String.split("-")

        date_string_1 = year <> "-" <> month <> "-" <> day
        {:ok, date} = Date.from_iso8601(date_string_1)
        date
    end
  end
end
