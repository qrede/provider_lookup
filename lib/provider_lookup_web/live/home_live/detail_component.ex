defmodule ProviderLookupWeb.HomeLive.DetailComponent do
  @moduledoc false
  use ProviderLookupWeb, :live_component

  alias ProviderLookup.Medical

  @impl true
  def render(assigns) do
    ~H"""
    <div class="container space-y-4 text-center">
      <%= if @npi && @core_npi do %>
        <h2 class="text-5xl font-semibold leading-10 text-zinc-800">
          <%= @core_npi.first_name %> <%= @core_npi.last_name %>
        </h2>
        <h3 class="text-zinc-900/80 mt-2 text-3xl leading-6"><%= @core_npi.description %></h3>
        <h5 class="text-lg font-bold leading-5"><%= @core_npi.phone |> replace_phone %></h5>
        <h5 class="text-lg font-bold leading-5">
          <%= @core_npi.addr_first %>, <%= @core_npi.city %>, <%= @core_npi.state %>, <%= @core_npi.zip %>
        </h5>
        <iframe
          width="600"
          height="450"
          style="border:0"
          loading="lazy"
          allowfullscreen
          src={@url |> Phoenix.HTML.raw()}
        >
        </iframe>
      <% else %>
        <h1 class="text-5xl font-semibold leading-10 text-zinc-800">Provider Not Found.</h1>
      <% end %>
    </div>
    """
  end

  @impl true
  def update(%{current_id: current_id} = assigns, socket) do
    core_npi = Medical.get_core_npi!(current_id)
    npi = Medical.get_npi_by_npi(core_npi.npi)
    addr_first1 = Regex.replace(~r/[^A-Za-z0-9,]+/, core_npi.addr_first, "")

    url =
      "https://www.google.com/maps/embed/v1/place?q=" <>
        addr_first1 <> "+" <> core_npi.zip <> "&key=AIzaSyCRQo5-Xt3cUiMbhQE91-Pa-VzfTMpP8SU"

    {:ok,
     socket
     |> assign(assigns)
     |> assign(:npi, npi)
     |> assign(:core_npi, core_npi)
     |> assign(:url, url)}
  end
end
