defmodule ProviderLookupWeb.PageController do
  use ProviderLookupWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
