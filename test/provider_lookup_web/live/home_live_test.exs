defmodule ProviderLookupWeb.HomeLiveTest do
  use ProviderLookupWeb.ConnCase

  import Phoenix.LiveViewTest

  describe "Index" do
    test "list", %{conn: conn} do
      {:ok, _index_live, html} = live(conn, ~p"/")
      assert html =~ "Medical Provider Lookup"
    end
  end
end
