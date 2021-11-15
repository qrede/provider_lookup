defmodule ProviderLookup.Repo.Migrations.CreateRawPl do
  use Ecto.Migration

  def change do
    create table(:raw_pl, primary_key: false) do
      add :npi, :integer, null: false
      add :second_add_1, :string
      add :second_add_2, :string
      add :second_city, :string
      add :second_state, :string
      add :postal_code, :string
      add :country_code, :string
      add :phone, :string
      add :extension, :string
      add :fax, :string
    end
  end
end
