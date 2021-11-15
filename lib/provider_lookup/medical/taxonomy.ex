defmodule ProviderLookup.Medical.Taxonomy do
  use Ecto.Schema
  import Ecto.Changeset
  alias ProviderLookup.Medical.NpiTaxonomy

  schema "taxonomy" do
    field :classification, :string
    field :code, :string
    field :deactivation_date, :string
    field :definition, :string
    field :display_name, :string
    field :effective_date, :string
    field :grouping, :string
    field :last_mod_date, :string
    field :notes, :string
    field :specialization, :string
    has_many :taxonomy_code, NpiTaxonomy, foreign_key: :taxonomy
  end

  @doc false
  def changeset(taxonomy, attrs) do
    taxonomy
    |> cast(attrs, [
      :code,
      :grouping,
      :classification,
      :specialization,
      :definition,
      :effective_date,
      :deactivation_date,
      :last_mod_date,
      :notes,
      :display_name
    ])
    |> validate_required([
      :code,
      :grouping,
      :classification,
      :specialization,
      :definition,
      :effective_date,
      :deactivation_date,
      :last_mod_date,
      :notes,
      :display_name
    ])
    |> unique_constraint(:code)
  end
end
