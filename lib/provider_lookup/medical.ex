defmodule ProviderLookup.Medical do
  @moduledoc """
  The Medical context.
  """

  import Ecto.Query, warn: false
  alias ProviderLookup.Repo

  alias ProviderLookup.Medical.Taxonomy

  @doc """
  Returns the list of taxonomy.

  ## Examples

      iex> list_taxonomy()
      [%Taxonomy{}, ...]

  """
  def list_taxonomy do
    Repo.all(Taxonomy)
  end

  @doc """
  Gets a single taxonomy.

  Raises `Ecto.NoResultsError` if the Taxonomy does not exist.

  ## Examples

      iex> get_taxonomy!(123)
      %Taxonomy{}

      iex> get_taxonomy!(456)
      ** (Ecto.NoResultsError)

  """
  def get_taxonomy!(id), do: Repo.get!(Taxonomy, id)

  @doc """
  Creates a taxonomy.

  ## Examples

      iex> create_taxonomy(%{field: value})
      {:ok, %Taxonomy{}}

      iex> create_taxonomy(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_taxonomy(attrs \\ %{}) do
    %Taxonomy{}
    |> Taxonomy.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a taxonomy.

  ## Examples

      iex> update_taxonomy(taxonomy, %{field: new_value})
      {:ok, %Taxonomy{}}

      iex> update_taxonomy(taxonomy, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_taxonomy(%Taxonomy{} = taxonomy, attrs) do
    taxonomy
    |> Taxonomy.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a taxonomy.

  ## Examples

      iex> delete_taxonomy(taxonomy)
      {:ok, %Taxonomy{}}

      iex> delete_taxonomy(taxonomy)
      {:error, %Ecto.Changeset{}}

  """
  def delete_taxonomy(%Taxonomy{} = taxonomy) do
    Repo.delete(taxonomy)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking taxonomy changes.

  ## Examples

      iex> change_taxonomy(taxonomy)
      %Ecto.Changeset{data: %Taxonomy{}}

  """
  def change_taxonomy(%Taxonomy{} = taxonomy, attrs \\ %{}) do
    Taxonomy.changeset(taxonomy, attrs)
  end

  alias ProviderLookup.Medical.Npi

  @doc """
  Returns the list of npi.

  ## Examples

      iex> list_npi()
      [%Npi{}, ...]

  """
  def list_npi do
    Repo.all(Npi)
  end

  @doc """
  Gets a single npi.

  Raises `Ecto.NoResultsError` if the Npi does not exist.

  ## Examples

      iex> get_npi!(123)
      %Npi{}

      iex> get_npi!(456)
      ** (Ecto.NoResultsError)

  """
  def get_npi!(id), do: Repo.get!(Npi, id)

  def get_npi_by_npi(npi) do
    Repo.get_by(Npi, npi: npi)
  end

  @doc """
  Creates a npi.

  ## Examples

      iex> create_npi(%{field: value})
      {:ok, %Npi{}}

      iex> create_npi(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_npi(attrs \\ %{}) do
    %Npi{}
    |> Npi.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a npi.

  ## Examples

      iex> update_npi(npi, %{field: new_value})
      {:ok, %Npi{}}

      iex> update_npi(npi, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_npi(%Npi{} = npi, attrs) do
    npi
    |> Npi.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a npi.

  ## Examples

      iex> delete_npi(npi)
      {:ok, %Npi{}}

      iex> delete_npi(npi)
      {:error, %Ecto.Changeset{}}

  """
  def delete_npi(%Npi{} = npi) do
    Repo.delete(npi)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking npi changes.

  ## Examples

      iex> change_npi(npi)
      %Ecto.Changeset{data: %Npi{}}

  """
  def change_npi(%Npi{} = npi, attrs \\ %{}) do
    Npi.changeset(npi, attrs)
  end

  alias ProviderLookup.Medical.NpiTaxonomy

  @doc """
  Returns the list of npi_taxonomy.

  ## Examples

      iex> list_npi_taxonomy()
      [%NpiTaxonomy{}, ...]

  """
  def list_npi_taxonomy do
    Repo.all(NpiTaxonomy)
  end

  @doc """
  Gets a single npi_taxonomy.

  Raises `Ecto.NoResultsError` if the Npi taxonomy does not exist.

  ## Examples

      iex> get_npi_taxonomy!(123)
      %NpiTaxonomy{}

      iex> get_npi_taxonomy!(456)
      ** (Ecto.NoResultsError)

  """
  def get_npi_taxonomy!(id), do: Repo.get!(NpiTaxonomy, id)

  @doc """
  Creates a npi_taxonomy.

  ## Examples

      iex> create_npi_taxonomy(%{field: value})
      {:ok, %NpiTaxonomy{}}

      iex> create_npi_taxonomy(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_npi_taxonomy(attrs \\ %{}) do
    %NpiTaxonomy{}
    |> NpiTaxonomy.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a npi_taxonomy.

  ## Examples

      iex> update_npi_taxonomy(npi_taxonomy, %{field: new_value})
      {:ok, %NpiTaxonomy{}}

      iex> update_npi_taxonomy(npi_taxonomy, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_npi_taxonomy(%NpiTaxonomy{} = npi_taxonomy, attrs) do
    npi_taxonomy
    |> NpiTaxonomy.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a npi_taxonomy.

  ## Examples

      iex> delete_npi_taxonomy(npi_taxonomy)
      {:ok, %NpiTaxonomy{}}

      iex> delete_npi_taxonomy(npi_taxonomy)
      {:error, %Ecto.Changeset{}}

  """
  def delete_npi_taxonomy(%NpiTaxonomy{} = npi_taxonomy) do
    Repo.delete(npi_taxonomy)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking npi_taxonomy changes.

  ## Examples

      iex> change_npi_taxonomy(npi_taxonomy)
      %Ecto.Changeset{data: %NpiTaxonomy{}}

  """
  def change_npi_taxonomy(%NpiTaxonomy{} = npi_taxonomy, attrs \\ %{}) do
    NpiTaxonomy.changeset(npi_taxonomy, attrs)
  end

  alias ProviderLookup.Medical.Addresses

  @doc """
  Returns the list of addresses.

  ## Examples

      iex> list_addresses()
      [%Addresses{}, ...]

  """
  def list_addresses do
    Repo.all(Addresses)
  end

  @doc """
  Gets a single addresses.

  Raises `Ecto.NoResultsError` if the Addresses does not exist.

  ## Examples

      iex> get_addresses!(123)
      %Addresses{}

      iex> get_addresses!(456)
      ** (Ecto.NoResultsError)

  """
  def get_addresses!(id), do: Repo.get!(Addresses, id)

  @doc """
  Creates a addresses.

  ## Examples

      iex> create_addresses(%{field: value})
      {:ok, %Addresses{}}

      iex> create_addresses(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_addresses(attrs \\ %{}) do
    %Addresses{}
    |> Addresses.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a addresses.

  ## Examples

      iex> update_addresses(addresses, %{field: new_value})
      {:ok, %Addresses{}}

      iex> update_addresses(addresses, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_addresses(%Addresses{} = addresses, attrs) do
    addresses
    |> Addresses.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a addresses.

  ## Examples

      iex> delete_addresses(addresses)
      {:ok, %Addresses{}}

      iex> delete_addresses(addresses)
      {:error, %Ecto.Changeset{}}

  """
  def delete_addresses(%Addresses{} = addresses) do
    Repo.delete(addresses)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking addresses changes.

  ## Examples

      iex> change_addresses(addresses)
      %Ecto.Changeset{data: %Addresses{}}

  """
  def change_addresses(%Addresses{} = addresses, attrs \\ %{}) do
    Addresses.changeset(addresses, attrs)
  end

  alias ProviderLookup.Medical.CoreNpi

  @doc """
  Returns the list of core_npi.

  ## Examples

      iex> list_core_npi()
      [%CoreNpi{}, ...]

  """
  def list_core_npi do
    Repo.all(CoreNpi)
  end

  @doc """
  Gets a single core_npi.

  Raises `Ecto.NoResultsError` if the Core npi does not exist.

  ## Examples

      iex> get_core_npi!(123)
      %CoreNpi{}

      iex> get_core_npi!(456)
      ** (Ecto.NoResultsError)

  """
  def get_core_npi!(id), do: Repo.get!(CoreNpi, id)

  @doc """
  Creates a core_npi.

  ## Examples

      iex> create_core_npi(%{field: value})
      {:ok, %CoreNpi{}}

      iex> create_core_npi(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_core_npi(attrs \\ %{}) do
    %CoreNpi{}
    |> CoreNpi.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a core_npi.

  ## Examples

      iex> update_core_npi(core_npi, %{field: new_value})
      {:ok, %CoreNpi{}}

      iex> update_core_npi(core_npi, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_core_npi(%CoreNpi{} = core_npi, attrs) do
    core_npi
    |> CoreNpi.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a core_npi.

  ## Examples

      iex> delete_core_npi(core_npi)
      {:ok, %CoreNpi{}}

      iex> delete_core_npi(core_npi)
      {:error, %Ecto.Changeset{}}

  """
  def delete_core_npi(%CoreNpi{} = core_npi) do
    Repo.delete(core_npi)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking core_npi changes.

  ## Examples

      iex> change_core_npi(core_npi)
      %Ecto.Changeset{data: %CoreNpi{}}

  """
  def change_core_npi(%CoreNpi{} = core_npi, attrs \\ %{}) do
    CoreNpi.changeset(core_npi, attrs)
  end

  alias ProviderLookup.Medical.RawPl

  @doc """
  Returns the list of raw_pl.

  ## Examples

      iex> list_raw_pl()
      [%RawPl{}, ...]

  """
  def list_raw_pl do
    Repo.all(RawPl)
  end

  @doc """
  Creates a raw_pl.

  ## Examples

      iex> create_raw_pl(%{field: value})
      {:ok, %RawPl{}}

      iex> create_raw_pl(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_raw_pl(attrs \\ %{}) do
    %RawPl{}
    |> RawPl.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a raw_pl.

  ## Examples

      iex> update_raw_pl(raw_pl, %{field: new_value})
      {:ok, %RawPl{}}

      iex> update_raw_pl(raw_pl, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_raw_pl(%RawPl{} = raw_pl, attrs) do
    raw_pl
    |> RawPl.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a raw_pl.

  ## Examples

      iex> delete_raw_pl(raw_pl)
      {:ok, %RawPl{}}

      iex> delete_raw_pl(raw_pl)
      {:error, %Ecto.Changeset{}}

  """
  def delete_raw_pl(%RawPl{} = raw_pl) do
    Repo.delete(raw_pl)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking raw_pl changes.

  ## Examples

      iex> change_raw_pl(raw_pl)
      %Ecto.Changeset{data: %RawPl{}}

  """
  def change_raw_pl(%RawPl{} = raw_pl, attrs \\ %{}) do
    RawPl.changeset(raw_pl, attrs)
  end
end
