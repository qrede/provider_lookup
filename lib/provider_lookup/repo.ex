defmodule ProviderLookup.Repo do
  use Ecto.Repo,
    otp_app: :provider_lookup,
    adapter: Ecto.Adapters.Postgres
end
