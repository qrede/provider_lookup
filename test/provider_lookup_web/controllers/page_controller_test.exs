defmodule ProviderLookupWeb.PageControllerTest do
  use ProviderLookupWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Medical Provider Lookup"
  end
end
