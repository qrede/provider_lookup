defmodule ProviderLookup.MedicalFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ProviderLookup.Medical` context.
  """

  @doc """
  Generate a unique taxonomy code.
  """
  def unique_taxonomy_code, do: "some code#{System.unique_integer([:positive])}"

  @doc """
  Generate a taxonomy.
  """
  def taxonomy_fixture(attrs \\ %{}) do
    {:ok, taxonomy} =
      attrs
      |> Enum.into(%{
        classification: "some classification",
        code: unique_taxonomy_code(),
        deactivation_date: "some deactivation_date",
        definition: "some definition",
        display_name: "some display_name",
        effective_date: "some effective_date",
        grouping: "some grouping",
        last_mod_date: "some last_mod_date",
        notes: "some notes",
        specialization: "some specialization"
      })
      |> ProviderLookup.Medical.create_taxonomy()

    taxonomy
  end

  @doc """
  Generate a unique npi npi.
  """
  # def unique_npi_npi, do: "some npi#{System.unique_integer([:positive])}"
  def unique_npi_npi, do: System.unique_integer([:positive])

  @doc """
  Generate a npi.
  """
  def npi_fixture(attrs \\ %{}) do
    {:ok, npi} =
      attrs
      |> Enum.into(%{
        other_identifier_21: "other_identifier_21",
        off_first_name: "off_first_name",
        other_identifier_type_22: "22",
        other_identifier_type_41: "41",
        other_identifier_1: "other_identifier_1",
        taxonomy_switch_15: "t",
        other_identifier_issuer_20: "other_identifier_issuer_20",
        other_identifier_issuer_27: "other_identifier_issuer_27",
        other_identifier_state_43: "43",
        other_identifier_issuer_36: "other_identifier_issuer_36",
        other_identifier_type_13: "13",
        other_identifier_state_14: "14",
        other_name_suffix: "other",
        license_num_12: "license_num_12",
        other_identifier_type_47: "47",
        other_identifier_44: "other_identifier_44",
        npi: unique_npi_npi(),
        taxonomy_group_5: "taxonomy_group_5",
        other_identifier_6: "other_identifier_6",
        off_title: "off_title",
        other_identifier_state_19: "19",
        enumeration_date: ~D[2021-10-20],
        other_identifier_47: "other_identifier_47",
        license_num_3: "license_num_3",
        other_identifier_type_46: "46",
        off_phone: "off_phone",
        license_state_15: "15",
        other_identifier_type_44: "44",
        license_state_4: "4",
        other_identifier_issuer_40: "other_identifier_issuer_40",
        other_identifier_issuer_34: "other_identifier_issuer_34",
        other_identifier_state_4: "4",
        other_identifier_14: "other_identifier_14",
        deactivate_date: ~D[2021-10-20],
        other_identifier_state_2: "2",
        other_identifier_45: "other_identifier_45",
        other_identifier_state_5: "5",
        other_identifier_issuer_29: "other_identifier_issuer_29",
        taxonomy_group_11: "taxonomy_group_11",
        taxonomy_switch_5: "5",
        other_identifier_issuer_23: "other_identifier_issuer_23",
        other_identifier_type_27: "27",
        other_identifier_state_36: "36",
        other_identifier_type_20: "20",
        taxonomy_group_8: "taxonomy_group_8",
        other_credential: "other_credential",
        other_identifier_37: "other_identifier_37",
        other_identifier_state_26: "26",
        other_identifier_type_12: "12",
        taxonomy_group_1: "taxonomy_group_1",
        other_identifier_34: "other_identifier_34",
        other_identifier_issuer_10: "other_identifier_issuer_10",
        taxonomy_switch_7: "7",
        other_identifier_27: "other_identifier_27",
        taxonomy_switch_8: "8",
        other_identifier_issuer_8: "other_identifier_issuer_8",
        other_identifier_issuer_12: "other_identifier_issuer_12",
        other_identifier_state_46: "46",
        other_identifier_25: "other_identifier_25",
        other_identifier_issuer_19: "other_identifier_issuer_19",
        other_identifier_type_10: "10",
        other_identifier_issuer_26: "other_identifier_issuer_26",
        license_num_7: "license_num_7",
        taxonomy_2: "taxonomy",
        addr_practice_state: "addr_practice_state",
        license_num_15: "license_num_15",
        license_num_8: "license_num_8",
        other_identifier_issuer_35: "other_identifier_issuer_35",
        other_identifier_23: "other_identifier_23",
        other_identifier_type_19: "19",
        license_num_10: "license_num_10",
        other_identifier_issuer_33: "other_identifier_issuer_33",
        taxonomy_switch_10: "t",
        other_identifier_state_23: "23",
        off_credentials: "off_credentials",
        other_middle_name: "other_middle_name",
        other_identifier_state_13: "13",
        taxonomy_7: "taxonomy",
        last_update: ~D[2021-10-20],
        taxonomy_switch_14: "t",
        other_identifier_issuer_7: "other_identifier_issuer_7",
        other_identifier_11: "other_identifier_11",
        addr_practice_phone: "phone",
        taxonomy_9: "taxonomy",
        other_identifier_type_21: "21",
        off_name_prefix: "off",
        other_identifier_type_17: "17",
        license_num_2: "license_num_2",
        credentials: "credentials",
        other_identifier_issuer_3: "other_identifier_issuer_3",
        other_identifier_issuer_39: "other_identifier_issuer_39",
        parent_lbn: "parent_lbn",
        license_num_14: "license_num_14",
        other_identifier_state_33: "33",
        other_identifier_issuer_38: "other_identifier_issuer_38",
        other_identifier_state_31: "31",
        taxonomy_switch_11: "t",
        license_state_1: "1",
        other_identifier_type_14: "14",
        entity_type: 42,
        other_identifier_20: "other_identifier_20",
        other_identifier_issuer_25: "other_identifier_issuer_25",
        other_identifier_state_41: "41",
        other_identifier_issuer_31: "other_identifier_issuer_31",
        other_name_prefix: "other",
        other_identifier_state_3: "3",
        other_identifier_50: "other_identifier_50",
        other_identifier_issuer_48: "other_identifier_issuer_48",
        license_state_7: "7",
        taxonomy_12: "taxonomy",
        other_identifier_17: "other_identifier_17",
        license_num_5: "license_num_5",
        other_identifier_24: "other_identifier_24",
        org_subpart: "o",
        taxonomy_group_3: "taxonomy_group_3",
        taxonomy_switch_3: "3",
        addr_mail_country: "ad",
        other_identifier_issuer_32: "other_identifier_issuer_32",
        license_state_6: "6",
        license_num_4: "license_num_4",
        other_identifier_type_11: "11",
        addr_mail_first: "addr_mail_first",
        other_identifier_type_50: "50",
        addr_practice_first: "addr_practice_first",
        other_identifier_type_34: "34",
        other_identifier_31: "other_identifier_31",
        other_identifier_state_12: "12",
        other_identifier_type_9: "9",
        other_identifier_issuer_45: "other_identifier_issuer_45",
        other_identifier_state_11: "11",
        other_identifier_40: "other_identifier_40",
        taxonomy_switch_2: "s",
        other_identifier_type_28: "28",
        taxonomy_group_7: "taxonomy_group_7",
        other_identifier_state_35: "35",
        license_state_3: "3",
        other_identifier_state_40: "40",
        other_identifier_issuer_21: "other_identifier_issuer_21",
        other_identifier_3: "other_identifier_3",
        other_identifier_issuer_37: "other_identifier_issuer_37",
        other_identifier_type_49: "49",
        other_identifier_type_40: "40",
        other_org_name: "other_org_name",
        other_identifier_42: "other_identifier_42",
        other_identifier_issuer_1: "other_identifier_issuer_1",
        other_identifier_46: "other_identifier_46",
        addr_mail_city: "addr_mail_city",
        other_identifier_issuer_17: "other_identifier_issuer_17",
        other_identifier_49: "other_identifier_49",
        other_identifier_state_9: "9",
        other_identifier_type_37: "37",
        other_identifier_36: "other_identifier_36",
        taxonomy_13: "taxonomy",
        license_state_2: "2",
        other_identifier_issuer_22: "other_identifier_issuer_22",
        other_identifier_state_30: "30",
        off_name_suffix: "off",
        addr_practice_fax: "addr_practice_fax",
        other_identifier_26: "other_identifier_26",
        other_identifier_type_8: "8",
        other_identifier_7: "other_identifier_7",
        other_identifier_type_5: "5",
        other_identifier_18: "other_identifier_18",
        other_identifier_33: "other_identifier_33",
        other_identifier_type_24: "24",
        other_identifier_type_7: "7",
        other_identifier_issuer_6: "other_identifier_issuer_6",
        other_identifier_type_25: "25",
        first_name: "first_name",
        taxonomy_switch_1: "s",
        other_identifier_state_21: "21",
        license_state_12: "12",
        other_identifier_state_25: "25",
        taxonomy_group_4: "taxonomy_group_4",
        taxonomy_switch_4: "4",
        other_identifier_state_20: "20",
        addr_practice_country: "ad",
        other_identifier_type_30: "30",
        taxonomy_5: "taxonomy",
        other_identifier_state_18: "18",
        other_identifier_state_7: "7",
        parent_tin: "parenttin",
        other_identifier_type_3: "3",
        other_identifier_state_34: "34",
        org_name: "org_name",
        other_identifier_state_49: "49",
        other_identifier_state_29: "29",
        taxonomy_1: "taxonomy",
        sole_proprieter: "s",
        other_identifier_38: "other_identifier_38",
        other_identifier_state_28: "28",
        addr_mail_postal: "addr_mail_postal",
        license_state_13: "13",
        other_org_name_type: "o",
        other_identifier_8: "other_identifier_8",
        other_last_name: "other_last_name",
        other_identifier_type_31: "31",
        other_identifier_issuer_15: "other_identifier_issuer_15",
        other_identifier_type_4: "4",
        other_identifier_2: "other_identifier_2",
        other_identifier_13: "other_identifier_13",
        other_identifier_issuer_11: "other_identifier_issuer_11",
        last_name: "last_name",
        other_identifier_29: "other_identifier_29",
        taxonomy_group_15: "taxonomy_group_15",
        license_num_13: "license_num_13",
        other_identifier_type_45: "45",
        other_identifier_12: "other_identifier_12",
        other_identifier_state_27: "27",
        other_identifier_issuer_5: "other_identifier_issuer_5",
        taxonomy_group_6: "taxonomy_group_6",
        other_identifier_issuer_13: "other_identifier_issuer_13",
        license_state_10: "10",
        taxonomy_switch_6: "6",
        taxonomy_14: "taxonomy",
        license_num_1: "license_num_1",
        other_identifier_type_33: "33",
        taxonomy_switch_9: "9",
        other_identifier_16: "other_identifier_16",
        gender: "g",
        other_identifier_state_47: "47",
        other_identifier_state_6: "6",
        license_state_14: "14",
        other_first_name: "other_first_name",
        other_identifier_issuer_44: "other_identifier_issuer_44",
        other_identifier_state_22: "22",
        other_identifier_state_42: "42",
        other_identifier_issuer_2: "other_identifier_issuer_2",
        other_identifier_type_35: "35",
        taxonomy_6: "taxonomy",
        other_identifier_issuer_14: "other_identifier_issuer_14",
        taxonomy_15: "taxonomy",
        license_state_9: "9",
        other_identifier_state_50: "50",
        other_identifier_22: "other_identifier_22",
        other_identifier_type_23: "23",
        other_identifier_28: "other_identifier_28",
        other_identifier_state_16: "16",
        ein: "ein",
        other_identifier_state_24: "24",
        other_identifier_32: "other_identifier_32",
        other_identifier_type_29: "29",
        other_identifier_state_17: "17",
        other_identifier_state_39: "39",
        other_identifier_type_18: "18",
        other_identifier_type_39: "39",
        other_identifier_48: "other_identifier_48",
        addr_practice_postal: "addr_practice_postal",
        taxonomy_switch_13: "t",
        name_suffix: "name",
        other_identifier_5: "other_identifier_5",
        name_prefix: "name",
        other_identifier_type_43: "43",
        other_identifier_issuer_18: "other_identifier_issuer_18",
        other_identifier_state_32: "32",
        other_identifier_type_2: "2",
        other_identifier_issuer_46: "other_identifier_issuer_46",
        taxonomy_4: "taxonomy",
        taxonomy_group_14: "taxonomy_group_14",
        addr_practice_second: "addr_practice_second",
        other_identifier_issuer_30: "other_identifier_issuer_30",
        cert_date: ~D[2021-10-20],
        other_identifier_41: "other_identifier_41",
        taxonomy_group_13: "taxonomy_group_13",
        other_identifier_type_15: "15",
        other_identifier_15: "other_identifier_15",
        addr_mail_second: "addr_mail_second",
        other_identifier_issuer_28: "other_identifier_issuer_28",
        other_identifier_39: "other_identifier_39",
        other_identifier_state_37: "37",
        other_identifier_state_48: "48",
        reactivate_date: ~D[2021-10-20],
        taxonomy_group_12: "taxonomy_group_12",
        deactivate_reason: "de",
        other_identifier_30: "other_identifier_30",
        license_num_6: "license_num_6",
        other_identifier_type_16: "16",
        other_identifier_type_1: "1",
        other_identifier_issuer_41: "other_identifier_issuer_41",
        off_middle_name: "off_middle_name",
        taxonomy_11: "taxonomy",
        other_identifier_issuer_47: "other_identifier_issuer_47",
        addr_mail_phone: "addr_mail_phone",
        other_identifier_state_1: "1",
        other_identifier_issuer_16: "other_identifier_issuer_16",
        off_last_name: "off_last_name",
        license_state_11: "11",
        other_identifier_type_6: "6",
        taxonomy_10: "taxonomy",
        other_identifier_type_38: "38",
        other_identifier_state_38: "38",
        other_identifier_10: "other_identifier_10",
        other_identifier_state_15: "15",
        other_identifier_issuer_50: "other_identifier_issuer_50",
        other_identifier_type_36: "36",
        addr_mail_state: "addr_mail_state",
        license_state_5: "5",
        other_last_name_code: "other_last_name_code",
        other_identifier_issuer_4: "other_identifier_issuer_4",
        other_identifier_43: "other_identifier_43",
        taxonomy_switch_12: "t",
        other_identifier_issuer_9: "other_identifier_issuer_9",
        other_identifier_issuer_24: "other_identifier_issuer_24",
        addr_mail_fax: "addr_mail_fax",
        other_identifier_type_26: "26",
        license_num_11: "license_num_11",
        other_identifier_state_44: "44",
        other_identifier_4: "other_identifier_4",
        other_identifier_19: "other_identifier_19",
        license_state_8: "8",
        other_identifier_issuer_42: "other_identifier_issuer_42",
        other_identifier_type_32: "32",
        other_identifier_issuer_43: "other_identifier_issuer_43",
        other_identifier_9: "other_identifier_9",
        license_num_9: "license_num_9",
        other_identifier_type_42: "42",
        other_identifier_issuer_49: "other_identifier_issuer_49",
        other_identifier_state_45: "45",
        taxonomy_group_9: "taxonomy_group_9",
        other_identifier_35: "other_identifier_35",
        other_identifier_type_48: "48",
        middle_name: "middle_name",
        taxonomy_8: "taxonomy",
        other_identifier_state_10: "10",
        addr_practice_city: "addr_practice_city",
        taxonomy_3: "taxonomy",
        other_identifier_state_8: "8",
        taxonomy_group_10: "taxonomy_group_10",
        taxonomy_group_2: "taxonomy_group_2"
      })
      |> ProviderLookup.Medical.create_npi()

    npi
  end

  @doc """
  Generate a npi_taxonomy.
  """
  def npi_taxonomy_fixture(attrs \\ %{}) do
    npi = npi_fixture()
    taxonomy = taxonomy_fixture()

    {:ok, npi_taxonomy} =
      attrs
      |> Enum.into(%{
        license_num: "some license_num",
        license_state: "so",
        taxonomy_classification: "some taxonomy_classification",
        taxonomy_group: "some taxonomy_group",
        taxonomy_switch: "s",
        npi_id: npi.npi,
        taxonomy_code: taxonomy.code
      })
      |> ProviderLookup.Medical.create_npi_taxonomy()

    npi_taxonomy
  end

  @doc """
  Generate a addresses.
  """
  def addresses_fixture(attrs \\ %{}) do
    npi = npi_fixture()

    {:ok, addresses} =
      attrs
      |> Enum.into(%{
        city: "some city",
        country: "uk",
        fax: "some fax",
        line_1: "some line_1",
        line_2: "some line_2",
        phone: "some phone",
        postal: "some postal",
        state: "some state",
        npi: npi.npi
      })
      |> ProviderLookup.Medical.create_addresses()

    addresses
  end

  @doc """
  Generate a core_npi.
  """
  def core_npi_fixture(attrs \\ %{}) do
    {:ok, core_npi} =
      attrs
      |> Enum.into(%{
        addr_first: "some addr_first",
        addr_last: "some addr_last",
        city: "some city",
        description: "some description",
        first_name: "some first_name",
        last_name: "some last_name",
        phone: "some phone",
        state: "some state",
        zip: "some zip"
      })
      |> ProviderLookup.Medical.create_core_npi()

    core_npi
  end

  @doc """
  Generate a raw_pl.
  """
  def raw_pl_fixture(attrs \\ %{}) do
    {:ok, raw_pl} =
      attrs
      |> Enum.into(%{
        country_code: "some country_code",
        extension: "some extension",
        npi: 42,
        phone: "some phone",
        postal_code: "some postal_code",
        second_add_1: "some second_add_1",
        second_add_2: "some second_add_2",
        second_city: "some second_city",
        second_state: "some second_state"
      })
      |> ProviderLookup.Medical.create_raw_pl()

    raw_pl
  end
end
