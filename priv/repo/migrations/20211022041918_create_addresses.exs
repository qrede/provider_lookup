defmodule ProviderLookup.Repo.Migrations.CreateAddresses do
  use Ecto.Migration

  def change do
    create table(:addresses) do
      add :line_1, :string, size: 55
      add :line_2, :string, size: 55
      add :city, :string, size: 40
      add :state, :string, size: 40
      add :postal, :string, size: 20
      add :country, :string, size: 2
      add :phone, :string, size: 20
      add :fax, :string, size: 20
      add :npi, references(:npi, on_delete: :nothing, column: :npi, type: :integer)
    end

    create index(:addresses, [:npi])
  end
end
