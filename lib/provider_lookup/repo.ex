defmodule ProviderLookup.Repo do
  use Ecto.Repo,
    otp_app: :provider_lookup,
    adapter: Ecto.Adapters.Postgres

  use Scrivener, page_size: 10
end
