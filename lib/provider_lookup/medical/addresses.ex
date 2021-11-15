defmodule ProviderLookup.Medical.Addresses do
  use Ecto.Schema
  import Ecto.Changeset
  alias ProviderLookup.Medical.Npi

  schema "addresses" do
    field :city, :string
    field :country, :string
    field :fax, :string
    field :line_1, :string
    field :line_2, :string
    field :phone, :string
    field :postal, :string
    field :state, :string
    belongs_to :npi_number, Npi, foreign_key: :npi, type: :integer
  end

  @doc false
  def changeset(addresses, attrs) do
    addresses
    |> cast(attrs, [:npi, :line_1, :line_2, :city, :state, :postal, :country, :phone, :fax])
    |> validate_required([:npi, :line_1, :line_2, :city, :state, :postal, :country, :phone, :fax])
    |> validate_length(:line_1, max: 55)
    |> validate_length(:line_2, max: 55)
    |> validate_length(:city, max: 40)
    |> validate_length(:state, max: 40)
    |> validate_length(:postal, max: 20)
    |> validate_length(:country, max: 2)
    |> validate_length(:phone, max: 20)
    |> validate_length(:fax, max: 20)
  end
end
