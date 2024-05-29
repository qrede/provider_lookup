defmodule ProviderLookupWeb.Plugs.RequestCurrentUri do
  @moduledoc false
  use ProviderLookupWeb, :live_view

  def on_mount(_, _params, _session, socket) do
    socket =
      attach_hook(socket, :set_current_path, :handle_params, fn
        _params, url, socket ->
          uri = URI.parse(url)
          {:cont, assign(socket, current_uri: uri)}
      end)

    {:cont, socket}
  end
end
