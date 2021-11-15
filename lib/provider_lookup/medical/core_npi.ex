defmodule ProviderLookup.Medical.CoreNpi do
  use Ecto.Schema
  import Ecto.Changeset
  alias ProviderLookup.Medical.Npi

  schema "core_npi" do
    field :addr_first, :string
    field :addr_last, :string
    field :city, :string
    field :description, :string
    field :first_name, :string
    field :last_name, :string
    field :phone, :string
    field :state, :string
    field :zip, :string
    belongs_to :npi_main, Npi, foreign_key: :npi
  end

  @doc false
  def changeset(core_npi, attrs) do
    core_npi
    |> cast(attrs, [
      :last_name,
      :first_name,
      :description,
      :state,
      :city,
      :zip,
      :addr_first,
      :addr_last,
      :phone
    ])
    |> validate_required([
      :last_name,
      :first_name,
      :description,
      :state,
      :city,
      :zip,
      :addr_first,
      :addr_last,
      :phone
    ])
  end
end
