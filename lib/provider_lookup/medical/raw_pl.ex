defmodule ProviderLookup.Medical.RawPl do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  schema "raw_pl" do
    field :country_code, :string
    field :extension, :string
    field :npi, :integer
    field :phone, :string
    field :postal_code, :string
    field :second_add_1, :string
    field :second_add_2, :string
    field :second_city, :string
    field :second_state, :string
    field :fax, :string
  end

  @doc false
  def changeset(raw_pl, attrs) do
    raw_pl
    |> cast(attrs, [
      :npi,
      :second_add_1,
      :second_add_2,
      :second_city,
      :second_state,
      :postal_code,
      :country_code,
      :phone,
      :extension,
      :fax
    ])
    |> validate_required([:npi])
  end
end
