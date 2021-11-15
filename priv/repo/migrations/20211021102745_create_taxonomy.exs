defmodule ProviderLookup.Repo.Migrations.CreateTaxonomy do
  use Ecto.Migration

  def change do
    create table(:taxonomy) do
      add :code, :string
      add :grouping, :string
      add :classification, :string
      add :specialization, :string
      add :definition, :text
      add :effective_date, :string
      add :deactivation_date, :string
      add :last_mod_date, :string
      add :notes, :text
      add :display_name, :string
    end

    create unique_index(:taxonomy, [:code])
  end
end
