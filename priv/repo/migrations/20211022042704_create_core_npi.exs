defmodule ProviderLookup.Repo.Migrations.CreateCoreNpi do
  use Ecto.Migration

  def change do
    create table(:core_npi) do
      add :last_name, :string
      add :first_name, :string
      add :description, :string
      add :state, :string
      add :city, :string
      add :zip, :string
      add :addr_first, :string
      add :addr_last, :string
      add :phone, :string
      add :npi, references(:npi, on_delete: :nothing, column: :npi, type: :integer)
    end

    create index(:core_npi, [:npi])
    create index(:core_npi, [:last_name], name: :core_lname)
    create index(:core_npi, [:last_name, :first_name], name: :core_fullname)
    create index(:core_npi, [:state], name: :core_citystate)
    create index(:core_npi, [:zip], name: :core_zip)
    create index(:core_npi, [:description], name: :core_description)
    create index(:core_npi, [:description, :city, :state], name: :description_citystate)
    create index(:core_npi, [:description, :zip], name: :description_zip)
    create index(:core_npi, [:description, :first_name, :last_name], name: :description_firstlast)
  end
end
