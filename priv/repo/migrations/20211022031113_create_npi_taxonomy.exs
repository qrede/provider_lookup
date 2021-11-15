defmodule ProviderLookup.Repo.Migrations.CreateNpiTaxonomy do
  use Ecto.Migration

  def change do
    create table(:npi_taxonomy, primary_key: false) do
      # add :tax_id, :integer, primary_key: true, autogenerate: true
      add :tax_id, :serial, primary_key: true
      add :taxonomy_group, :string
      add :taxonomy_classification, :string
      add :license_num, :string, size: 20
      add :license_state, :string, size: 2
      add :taxonomy_switch, :string, size: 1
      add :npi, references(:npi, on_delete: :nothing, column: :npi, type: :integer)
      add :taxonomy, references(:taxonomy, on_delete: :nothing, column: :code, type: :string)
    end

    create index(:npi_taxonomy, [:npi])
    create index(:npi_taxonomy, [:taxonomy])
  end
end
