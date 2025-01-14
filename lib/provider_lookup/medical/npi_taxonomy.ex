defmodule ProviderLookup.Medical.NpiTaxonomy do
  use Ecto.Schema
  import Ecto.Changeset

  alias ProviderLookup.Medical.Npi
  alias ProviderLookup.Medical.Taxonomy

  @primary_key {:tax_id, :id, autogenerate: true}
  @derive {Phoenix.Param, key: :tax_id}

  schema "npi_taxonomy" do
    field :license_num, :string
    field :license_state, :string
    field :taxonomy_classification, :string
    field :taxonomy_group, :string
    field :taxonomy_switch, :string
    belongs_to :npi_main, Npi, foreign_key: :npi
    belongs_to :taxonomy_code, Taxonomy, foreign_key: :taxonomy, type: :string
  end

  @spec changeset(
          {map, map}
          | %{
              :__struct__ => atom | %{:__changeset__ => map, optional(any) => any},
              optional(atom) => any
            },
          :invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}
        ) :: Ecto.Changeset.t()
  @doc false
  def changeset(npi_taxonomy, attrs) do
    npi_taxonomy
    |> cast(attrs, [
      :taxonomy_group,
      :taxonomy_classification,
      :license_num,
      :license_state,
      :taxonomy_switch
    ])
    |> validate_required([
      :taxonomy_group,
      :taxonomy_classification,
      :license_num,
      :license_state,
      :taxonomy_switch
    ])
  end
end
