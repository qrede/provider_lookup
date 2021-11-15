defmodule ProviderLookup.MedicalTest do
  use ProviderLookup.DataCase

  alias ProviderLookup.Medical

  describe "taxonomy" do
    alias ProviderLookup.Medical.Taxonomy

    import ProviderLookup.MedicalFixtures

    @invalid_attrs %{
      classification: nil,
      code: nil,
      deactivation_date: nil,
      definition: nil,
      display_name: nil,
      effective_date: nil,
      grouping: nil,
      last_mod_date: nil,
      notes: nil,
      specialization: nil
    }

    test "list_taxonomy/0 returns all taxonomy" do
      taxonomy = taxonomy_fixture()
      assert Medical.list_taxonomy() == [taxonomy]
    end

    test "get_taxonomy!/1 returns the taxonomy with given id" do
      taxonomy = taxonomy_fixture()
      assert Medical.get_taxonomy!(taxonomy.id) == taxonomy
    end

    test "create_taxonomy/1 with valid data creates a taxonomy" do
      valid_attrs = %{
        classification: "some classification",
        code: "some code",
        deactivation_date: "some deactivation_date",
        definition: "some definition",
        display_name: "some display_name",
        effective_date: "some effective_date",
        grouping: "some grouping",
        last_mod_date: "some last_mod_date",
        notes: "some notes",
        specialization: "some specialization"
      }

      assert {:ok, %Taxonomy{} = taxonomy} = Medical.create_taxonomy(valid_attrs)
      assert taxonomy.classification == "some classification"
      assert taxonomy.code == "some code"
      assert taxonomy.deactivation_date == "some deactivation_date"
      assert taxonomy.definition == "some definition"
      assert taxonomy.display_name == "some display_name"
      assert taxonomy.effective_date == "some effective_date"
      assert taxonomy.grouping == "some grouping"
      assert taxonomy.last_mod_date == "some last_mod_date"
      assert taxonomy.notes == "some notes"
      assert taxonomy.specialization == "some specialization"
    end

    test "create_taxonomy/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Medical.create_taxonomy(@invalid_attrs)
    end

    test "update_taxonomy/2 with valid data updates the taxonomy" do
      taxonomy = taxonomy_fixture()

      update_attrs = %{
        classification: "some updated classification",
        code: "some updated code",
        deactivation_date: "some updated deactivation_date",
        definition: "some updated definition",
        display_name: "some updated display_name",
        effective_date: "some updated effective_date",
        grouping: "some updated grouping",
        last_mod_date: "some updated last_mod_date",
        notes: "some updated notes",
        specialization: "some updated specialization"
      }

      assert {:ok, %Taxonomy{} = taxonomy} = Medical.update_taxonomy(taxonomy, update_attrs)
      assert taxonomy.classification == "some updated classification"
      assert taxonomy.code == "some updated code"
      assert taxonomy.deactivation_date == "some updated deactivation_date"
      assert taxonomy.definition == "some updated definition"
      assert taxonomy.display_name == "some updated display_name"
      assert taxonomy.effective_date == "some updated effective_date"
      assert taxonomy.grouping == "some updated grouping"
      assert taxonomy.last_mod_date == "some updated last_mod_date"
      assert taxonomy.notes == "some updated notes"
      assert taxonomy.specialization == "some updated specialization"
    end

    test "update_taxonomy/2 with invalid data returns error changeset" do
      taxonomy = taxonomy_fixture()
      assert {:error, %Ecto.Changeset{}} = Medical.update_taxonomy(taxonomy, @invalid_attrs)
      assert taxonomy == Medical.get_taxonomy!(taxonomy.id)
    end

    test "delete_taxonomy/1 deletes the taxonomy" do
      taxonomy = taxonomy_fixture()
      assert {:ok, %Taxonomy{}} = Medical.delete_taxonomy(taxonomy)
      assert_raise Ecto.NoResultsError, fn -> Medical.get_taxonomy!(taxonomy.id) end
    end

    test "change_taxonomy/1 returns a taxonomy changeset" do
      taxonomy = taxonomy_fixture()
      assert %Ecto.Changeset{} = Medical.change_taxonomy(taxonomy)
    end
  end

  describe "npi" do
    alias ProviderLookup.Medical.Npi

    import ProviderLookup.MedicalFixtures

    @invalid_attrs %{
      taxonomy_group_2: nil,
      taxonomy_group_10: nil,
      other_identifier_state_8: nil,
      taxonomy_3: nil,
      addr_practice_city: nil,
      other_identifier_state_10: nil,
      taxonomy_8: nil,
      middle_name: nil,
      other_identifier_type_48: nil,
      other_identifier_35: nil,
      taxonomy_group_9: nil,
      other_identifier_state_45: nil,
      other_identifier_issuer_49: nil,
      other_identifier_type_42: nil,
      license_num_9: nil,
      other_identifier_9: nil,
      other_identifier_issuer_43: nil,
      other_identifier_type_32: nil,
      other_identifier_issuer_42: nil,
      license_state_8: nil,
      other_identifier_19: nil,
      other_identifier_4: nil,
      other_identifier_state_44: nil,
      license_num_11: nil,
      other_identifier_type_26: nil,
      addr_mail_fax: nil,
      other_identifier_issuer_24: nil,
      other_identifier_issuer_9: nil,
      taxonomy_switch_12: nil,
      other_identifier_43: nil,
      other_identifier_issuer_4: nil,
      other_last_name_code: nil,
      license_state_5: nil,
      addr_mail_state: nil,
      other_identifier_type_36: nil,
      other_identifier_issuer_50: nil,
      other_identifier_state_15: nil,
      other_identifier_10: nil,
      other_identifier_state_38: nil,
      other_identifier_type_38: nil,
      taxonomy_10: nil,
      other_identifier_type_6: nil,
      license_state_11: nil,
      off_last_name: nil,
      other_identifier_issuer_16: nil,
      other_identifier_state_1: nil,
      addr_mail_phone: nil,
      other_identifier_issuer_47: nil,
      taxonomy_11: nil,
      off_middle_name: nil,
      other_identifier_issuer_41: nil,
      other_identifier_type_1: nil,
      other_identifier_type_16: nil,
      license_num_6: nil,
      other_identifier_30: nil,
      deactivate_reason: nil,
      taxonomy_group_12: nil,
      reactivate_date: nil,
      other_identifier_state_48: nil,
      other_identifier_state_37: nil,
      other_identifier_39: nil,
      other_identifier_issuer_28: nil,
      addr_mail_second: nil,
      other_identifier_15: nil,
      other_identifier_type_15: nil,
      taxonomy_group_13: nil,
      other_identifier_41: nil,
      cert_date: nil,
      other_identifier_issuer_30: nil,
      addr_practice_second: nil,
      taxonomy_group_14: nil,
      taxonomy_4: nil,
      other_identifier_issuer_46: nil,
      other_identifier_type_2: nil,
      other_identifier_state_32: nil,
      other_identifier_issuer_18: nil,
      other_identifier_type_43: nil,
      name_prefix: nil,
      other_identifier_5: nil,
      name_suffix: nil,
      taxonomy_switch_13: nil,
      addr_practice_postal: nil,
      other_identifier_48: nil,
      other_identifier_type_39: nil,
      other_identifier_type_18: nil,
      other_identifier_state_39: nil,
      other_identifier_state_17: nil,
      other_identifier_type_29: nil,
      other_identifier_32: nil,
      other_identifier_state_24: nil,
      ein: nil,
      other_identifier_state_16: nil,
      other_identifier_28: nil,
      other_identifier_type_23: nil,
      other_identifier_22: nil,
      other_identifier_state_50: nil,
      license_state_9: nil,
      taxonomy_15: nil,
      other_identifier_issuer_14: nil,
      taxonomy_6: nil,
      other_identifier_type_35: nil,
      other_identifier_issuer_2: nil,
      other_identifier_state_42: nil,
      other_identifier_state_22: nil,
      other_identifier_issuer_44: nil,
      other_first_name: nil,
      license_state_14: nil,
      other_identifier_state_6: nil,
      other_identifier_state_47: nil,
      gender: nil,
      other_identifier_16: nil,
      taxonomy_switch_9: nil,
      other_identifier_type_33: nil,
      license_num_1: nil,
      taxonomy_14: nil,
      taxonomy_switch_6: nil,
      license_state_10: nil,
      other_identifier_issuer_13: nil,
      taxonomy_group_6: nil,
      other_identifier_issuer_5: nil,
      other_identifier_state_27: nil,
      other_identifier_12: nil,
      other_identifier_type_45: nil,
      license_num_13: nil,
      taxonomy_group_15: nil,
      other_identifier_29: nil,
      last_name: nil,
      other_identifier_issuer_11: nil,
      other_identifier_13: nil,
      other_identifier_2: nil,
      other_identifier_type_4: nil,
      other_identifier_issuer_15: nil,
      other_identifier_type_31: nil,
      other_last_name: nil,
      other_identifier_8: nil,
      other_org_name_type: nil,
      license_state_13: nil,
      addr_mail_postal: nil,
      other_identifier_state_28: nil,
      other_identifier_38: nil,
      sole_proprieter: nil,
      taxonomy_1: nil,
      other_identifier_state_29: nil,
      other_identifier_state_49: nil,
      org_name: nil,
      other_identifier_state_34: nil,
      other_identifier_type_3: nil,
      parent_tin: nil,
      other_identifier_state_7: nil,
      other_identifier_state_18: nil,
      taxonomy_5: nil,
      other_identifier_type_30: nil,
      addr_practice_country: nil,
      other_identifier_state_20: nil,
      taxonomy_switch_4: nil,
      taxonomy_group_4: nil,
      other_identifier_state_25: nil,
      license_state_12: nil,
      other_identifier_state_21: nil,
      taxonomy_switch_1: nil,
      first_name: nil,
      other_identifier_type_25: nil,
      other_identifier_issuer_6: nil,
      other_identifier_type_7: nil,
      other_identifier_type_24: nil,
      other_identifier_33: nil,
      other_identifier_18: nil,
      other_identifier_type_5: nil,
      other_identifier_7: nil,
      other_identifier_type_8: nil,
      other_identifier_26: nil,
      addr_practice_fax: nil,
      off_name_suffix: nil,
      other_identifier_state_30: nil,
      other_identifier_issuer_22: nil,
      license_state_2: nil,
      taxonomy_13: nil,
      other_identifier_36: nil,
      other_identifier_type_37: nil,
      other_identifier_state_9: nil,
      other_identifier_49: nil,
      other_identifier_issuer_17: nil,
      addr_mail_city: nil,
      other_identifier_46: nil,
      other_identifier_issuer_1: nil,
      other_identifier_42: nil,
      other_org_name: nil,
      other_identifier_type_40: nil,
      other_identifier_type_49: nil,
      other_identifier_issuer_37: nil,
      other_identifier_3: nil,
      other_identifier_issuer_21: nil,
      other_identifier_state_40: nil,
      license_state_3: nil,
      other_identifier_state_35: nil,
      taxonomy_group_7: nil,
      other_identifier_type_28: nil,
      taxonomy_switch_2: nil,
      other_identifier_40: nil,
      other_identifier_state_11: nil,
      other_identifier_issuer_45: nil,
      other_identifier_type_9: nil,
      other_identifier_state_12: nil,
      other_identifier_31: nil,
      other_identifier_type_34: nil,
      addr_practice_first: nil,
      other_identifier_type_50: nil,
      addr_mail_first: nil,
      other_identifier_type_11: nil,
      license_num_4: nil,
      license_state_6: nil,
      other_identifier_issuer_32: nil,
      addr_mail_country: nil,
      taxonomy_switch_3: nil,
      taxonomy_group_3: nil,
      org_subpart: nil,
      other_identifier_24: nil,
      license_num_5: nil,
      other_identifier_17: nil,
      taxonomy_12: nil,
      license_state_7: nil,
      other_identifier_issuer_48: nil,
      other_identifier_50: nil,
      other_identifier_state_3: nil,
      other_name_prefix: nil,
      other_identifier_issuer_31: nil,
      other_identifier_state_41: nil,
      other_identifier_issuer_25: nil,
      other_identifier_20: nil,
      entity_type: nil,
      other_identifier_type_14: nil,
      license_state_1: nil,
      taxonomy_switch_11: nil,
      other_identifier_state_31: nil,
      other_identifier_issuer_38: nil,
      other_identifier_state_33: nil,
      license_num_14: nil,
      parent_lbn: nil,
      other_identifier_issuer_39: nil,
      other_identifier_issuer_3: nil,
      credentials: nil,
      license_num_2: nil,
      other_identifier_type_17: nil,
      off_name_prefix: nil,
      other_identifier_type_21: nil,
      taxonomy_9: nil,
      addr_practice_phone: nil,
      other_identifier_11: nil,
      other_identifier_issuer_7: nil,
      taxonomy_switch_14: nil,
      last_update: nil,
      taxonomy_7: nil,
      other_identifier_state_13: nil,
      other_middle_name: nil,
      off_credentials: nil,
      other_identifier_state_23: nil,
      taxonomy_switch_10: nil,
      other_identifier_issuer_33: nil,
      license_num_10: nil,
      other_identifier_type_19: nil,
      other_identifier_23: nil,
      other_identifier_issuer_35: nil,
      license_num_8: nil,
      license_num_15: nil,
      addr_practice_state: nil,
      taxonomy_2: nil,
      license_num_7: nil,
      other_identifier_issuer_26: nil,
      other_identifier_type_10: nil,
      other_identifier_issuer_19: nil,
      other_identifier_25: nil,
      other_identifier_state_46: nil,
      other_identifier_issuer_12: nil,
      other_identifier_issuer_8: nil,
      taxonomy_switch_8: nil,
      other_identifier_27: nil,
      taxonomy_switch_7: nil,
      other_identifier_issuer_10: nil,
      other_identifier_34: nil,
      taxonomy_group_1: nil,
      other_identifier_type_12: nil,
      other_identifier_state_26: nil,
      other_identifier_37: nil,
      other_credential: nil,
      taxonomy_group_8: nil,
      other_identifier_type_20: nil,
      other_identifier_state_36: nil,
      other_identifier_type_27: nil,
      other_identifier_issuer_23: nil,
      taxonomy_switch_5: nil,
      taxonomy_group_11: nil,
      other_identifier_issuer_29: nil,
      other_identifier_state_5: nil,
      other_identifier_45: nil,
      other_identifier_state_2: nil,
      deactivate_date: nil,
      other_identifier_14: nil,
      other_identifier_state_4: nil,
      other_identifier_issuer_34: nil,
      other_identifier_issuer_40: nil,
      license_state_4: nil,
      other_identifier_type_44: nil,
      license_state_15: nil,
      off_phone: nil,
      other_identifier_type_46: nil,
      license_num_3: nil,
      other_identifier_47: nil,
      enumeration_date: nil,
      other_identifier_state_19: nil,
      off_title: nil,
      other_identifier_6: nil,
      taxonomy_group_5: nil,
      npi: nil,
      other_identifier_44: nil,
      other_identifier_type_47: nil,
      license_num_12: nil,
      other_name_suffix: nil,
      other_identifier_state_14: nil,
      other_identifier_type_13: nil,
      other_identifier_issuer_36: nil,
      other_identifier_state_43: nil,
      other_identifier_issuer_27: nil,
      other_identifier_issuer_20: nil,
      taxonomy_switch_15: nil,
      other_identifier_1: nil,
      other_identifier_type_41: nil,
      other_identifier_type_22: nil,
      off_first_name: nil,
      other_identifier_21: nil
    }

    test "list_npi/0 returns all npi" do
      npi = npi_fixture()
      assert Medical.list_npi() == [npi]
    end

    test "get_npi!/1 returns the npi with given id" do
      npi = npi_fixture()
      assert Medical.get_npi!(npi.id) == npi
    end

    test "create_npi/1 with valid data creates a npi" do
      valid_attrs = %{
        taxonomy_group_2: "taxonomy_group_2",
        taxonomy_group_10: "taxonomy_group_10",
        other_identifier_state_8: "8",
        taxonomy_3: "taxonomy",
        addr_practice_city: "addr_practice_city",
        other_identifier_state_10: "10",
        taxonomy_8: "taxonomy",
        middle_name: "middle_name",
        other_identifier_type_48: "48",
        other_identifier_35: "other_identifier_35",
        taxonomy_group_9: "taxonomy_group_9",
        other_identifier_state_45: "45",
        other_identifier_issuer_49: "other_identifier_issuer_49",
        other_identifier_type_42: "42",
        license_num_9: "license_num_9",
        other_identifier_9: "other_identifier_9",
        other_identifier_issuer_43: "other_identifier_issuer_43",
        other_identifier_type_32: "32",
        other_identifier_issuer_42: "other_identifier_issuer_42",
        license_state_8: "8",
        other_identifier_19: "other_identifier_19",
        other_identifier_4: "other_identifier_4",
        other_identifier_state_44: "44",
        license_num_11: "license_num_11",
        other_identifier_type_26: "26",
        addr_mail_fax: "addr_mail_fax",
        other_identifier_issuer_24: "other_identifier_issuer_24",
        other_identifier_issuer_9: "other_identifier_issuer_9",
        taxonomy_switch_12: "t",
        other_identifier_43: "other_identifier_43",
        other_identifier_issuer_4: "other_identifier_issuer_4",
        other_last_name_code: "other_last_name_code",
        license_state_5: "5",
        addr_mail_state: "addr_mail_state",
        other_identifier_type_36: "36",
        other_identifier_issuer_50: "other_identifier_issuer_50",
        other_identifier_state_15: "15",
        other_identifier_10: "other_identifier_10",
        other_identifier_state_38: "38",
        other_identifier_type_38: "38",
        taxonomy_10: "taxonomy",
        other_identifier_type_6: "6",
        license_state_11: "11",
        off_last_name: "off_last_name",
        other_identifier_issuer_16: "other_identifier_issuer_16",
        other_identifier_state_1: "1",
        addr_mail_phone: "addr_mail_phone",
        other_identifier_issuer_47: "other_identifier_issuer_47",
        taxonomy_11: "taxonomy",
        off_middle_name: "off_middle_name",
        other_identifier_issuer_41: "other_identifier_issuer_41",
        other_identifier_type_1: "1",
        other_identifier_type_16: "16",
        license_num_6: "license_num_6",
        other_identifier_30: "other_identifier_30",
        deactivate_reason: "de",
        taxonomy_group_12: "taxonomy_group_12",
        reactivate_date: ~D[2021-10-20],
        other_identifier_state_48: "48",
        other_identifier_state_37: "37",
        other_identifier_39: "other_identifier_39",
        other_identifier_issuer_28: "other_identifier_issuer_28",
        addr_mail_second: "addr_mail_second",
        other_identifier_15: "other_identifier_15",
        other_identifier_type_15: "15",
        taxonomy_group_13: "taxonomy_group_13",
        other_identifier_41: "other_identifier_41",
        cert_date: ~D[2021-10-20],
        other_identifier_issuer_30: "other_identifier_issuer_30",
        addr_practice_second: "addr_practice_second",
        taxonomy_group_14: "taxonomy_group_14",
        taxonomy_4: "taxonomy",
        other_identifier_issuer_46: "other_identifier_issuer_46",
        other_identifier_type_2: "2",
        other_identifier_state_32: "32",
        other_identifier_issuer_18: "other_identifier_issuer_18",
        other_identifier_type_43: "43",
        name_prefix: "name",
        other_identifier_5: "other_identifier_5",
        name_suffix: "name",
        taxonomy_switch_13: "t",
        addr_practice_postal: "addr_practice_postal",
        other_identifier_48: "other_identifier_48",
        other_identifier_type_39: "39",
        other_identifier_type_18: "18",
        other_identifier_state_39: "39",
        other_identifier_state_17: "17",
        other_identifier_type_29: "29",
        other_identifier_32: "other_identifier_32",
        other_identifier_state_24: "24",
        ein: "ein",
        other_identifier_state_16: "16",
        other_identifier_28: "other_identifier_28",
        other_identifier_type_23: "23",
        other_identifier_22: "other_identifier_22",
        other_identifier_state_50: "50",
        license_state_9: "9",
        taxonomy_15: "taxonomy",
        other_identifier_issuer_14: "other_identifier_issuer_14",
        taxonomy_6: "taxonomy",
        other_identifier_type_35: "35",
        other_identifier_issuer_2: "other_identifier_issuer_2",
        other_identifier_state_42: "42",
        other_identifier_state_22: "22",
        other_identifier_issuer_44: "other_identifier_issuer_44",
        other_first_name: "other_first_name",
        license_state_14: "14",
        other_identifier_state_6: "6",
        other_identifier_state_47: "47",
        gender: "g",
        other_identifier_16: "other_identifier_16",
        taxonomy_switch_9: "9",
        other_identifier_type_33: "33",
        license_num_1: "license_num_1",
        taxonomy_14: "taxonomy",
        taxonomy_switch_6: "6",
        license_state_10: "10",
        other_identifier_issuer_13: "other_identifier_issuer_13",
        taxonomy_group_6: "taxonomy_group_6",
        other_identifier_issuer_5: "other_identifier_issuer_5",
        other_identifier_state_27: "27",
        other_identifier_12: "other_identifier_12",
        other_identifier_type_45: "45",
        license_num_13: "license_num_13",
        taxonomy_group_15: "taxonomy_group_15",
        other_identifier_29: "other_identifier_29",
        last_name: "last_name",
        other_identifier_issuer_11: "other_identifier_issuer_11",
        other_identifier_13: "other_identifier_13",
        other_identifier_2: "other_identifier_2",
        other_identifier_type_4: "4",
        other_identifier_issuer_15: "other_identifier_issuer_15",
        other_identifier_type_31: "31",
        other_last_name: "other_last_name",
        other_identifier_8: "other_identifier_8",
        other_org_name_type: "o",
        license_state_13: "13",
        addr_mail_postal: "addr_mail_postal",
        other_identifier_state_28: "28",
        other_identifier_38: "other_identifier_38",
        sole_proprieter: "s",
        taxonomy_1: "taxonomy",
        other_identifier_state_29: "29",
        other_identifier_state_49: "49",
        org_name: "org_name",
        other_identifier_state_34: "34",
        other_identifier_type_3: "3",
        parent_tin: "parenttin",
        other_identifier_state_7: "7",
        other_identifier_state_18: "18",
        taxonomy_5: "taxonomy",
        other_identifier_type_30: "30",
        addr_practice_country: "ad",
        other_identifier_state_20: "20",
        taxonomy_switch_4: "4",
        taxonomy_group_4: "taxonomy_group_4",
        other_identifier_state_25: "25",
        license_state_12: "12",
        other_identifier_state_21: "21",
        taxonomy_switch_1: "1",
        first_name: "first_name",
        other_identifier_type_25: "25",
        other_identifier_issuer_6: "other_identifier_issuer_6",
        other_identifier_type_7: "7",
        other_identifier_type_24: "24",
        other_identifier_33: "other_identifier_33",
        other_identifier_18: "other_identifier_18",
        other_identifier_type_5: "5",
        other_identifier_7: "other_identifier_7",
        other_identifier_type_8: "8",
        other_identifier_26: "other_identifier_26",
        addr_practice_fax: "addr_practice_fax",
        off_name_suffix: "off",
        other_identifier_state_30: "30",
        other_identifier_issuer_22: "other_identifier_issuer_22",
        license_state_2: "2",
        taxonomy_13: "taxonomy",
        other_identifier_36: "other_identifier_36",
        other_identifier_type_37: "37",
        other_identifier_state_9: "9",
        other_identifier_49: "other_identifier_49",
        other_identifier_issuer_17: "other_identifier_issuer_17",
        addr_mail_city: "addr_mail_city",
        other_identifier_46: "other_identifier_46",
        other_identifier_issuer_1: "other_identifier_issuer_1",
        other_identifier_42: "other_identifier_42",
        other_org_name: "other_org_name",
        other_identifier_type_40: "40",
        other_identifier_type_49: "49",
        other_identifier_issuer_37: "other_identifier_issuer_37",
        other_identifier_3: "other_identifier_3",
        other_identifier_issuer_21: "other_identifier_issuer_21",
        other_identifier_state_40: "40",
        license_state_3: "3",
        other_identifier_state_35: "35",
        taxonomy_group_7: "taxonomy_group_7",
        other_identifier_type_28: "28",
        taxonomy_switch_2: "2",
        other_identifier_40: "other_identifier_40",
        other_identifier_state_11: "11",
        other_identifier_issuer_45: "other_identifier_issuer_45",
        other_identifier_type_9: "9",
        other_identifier_state_12: "12",
        other_identifier_31: "other_identifier_31",
        other_identifier_type_34: "34",
        addr_practice_first: "addr_practice_first",
        other_identifier_type_50: "50",
        addr_mail_first: "addr_mail_first",
        other_identifier_type_11: "11",
        license_num_4: "license_num_4",
        license_state_6: "6",
        other_identifier_issuer_32: "other_identifier_issuer_32",
        addr_mail_country: "ad",
        taxonomy_switch_3: "3",
        taxonomy_group_3: "taxonomy_group_3",
        org_subpart: "o",
        other_identifier_24: "other_identifier_24",
        license_num_5: "license_num_5",
        other_identifier_17: "other_identifier_17",
        taxonomy_12: "taxonomy",
        license_state_7: "7",
        other_identifier_issuer_48: "other_identifier_issuer_48",
        other_identifier_50: "other_identifier_50",
        other_identifier_state_3: "3",
        other_name_prefix: "other",
        other_identifier_issuer_31: "other_identifier_issuer_31",
        other_identifier_state_41: "41",
        other_identifier_issuer_25: "other_identifier_issuer_25",
        other_identifier_20: "other_identifier_20",
        entity_type: 42,
        other_identifier_type_14: "14",
        license_state_1: "1",
        taxonomy_switch_11: "t",
        other_identifier_state_31: "31",
        other_identifier_issuer_38: "other_identifier_issuer_38",
        other_identifier_state_33: "33",
        license_num_14: "license_num_14",
        parent_lbn: "parent_lbn",
        other_identifier_issuer_39: "other_identifier_issuer_39",
        other_identifier_issuer_3: "other_identifier_issuer_3",
        credentials: "credentials",
        license_num_2: "license_num_2",
        other_identifier_type_17: "17",
        off_name_prefix: "off",
        other_identifier_type_21: "21",
        taxonomy_9: "taxonomy",
        addr_practice_phone: "phone",
        other_identifier_11: "other_identifier_11",
        other_identifier_issuer_7: "other_identifier_issuer_7",
        taxonomy_switch_14: "t",
        last_update: ~D[2021-10-20],
        taxonomy_7: "taxonomy",
        other_identifier_state_13: "13",
        other_middle_name: "other_middle_name",
        off_credentials: "off_credentials",
        other_identifier_state_23: "23",
        taxonomy_switch_10: "t",
        other_identifier_issuer_33: "other_identifier_issuer_33",
        license_num_10: "license_num_10",
        other_identifier_type_19: "19",
        other_identifier_23: "other_identifier_23",
        other_identifier_issuer_35: "other_identifier_issuer_35",
        license_num_8: "license_num_8",
        license_num_15: "license_num_15",
        addr_practice_state: "addr_practice_state",
        taxonomy_2: "taxonomy",
        license_num_7: "license_num_7",
        other_identifier_issuer_26: "other_identifier_issuer_26",
        other_identifier_type_10: "10",
        other_identifier_issuer_19: "other_identifier_issuer_19",
        other_identifier_25: "other_identifier_25",
        other_identifier_state_46: "46",
        other_identifier_issuer_12: "other_identifier_issuer_12",
        other_identifier_issuer_8: "other_identifier_issuer_8",
        taxonomy_switch_8: "8",
        other_identifier_27: "other_identifier_27",
        taxonomy_switch_7: "7",
        other_identifier_issuer_10: "other_identifier_issuer_10",
        other_identifier_34: "other_identifier_34",
        taxonomy_group_1: "taxonomy_group_1",
        other_identifier_type_12: "12",
        other_identifier_state_26: "26",
        other_identifier_37: "other_identifier_37",
        other_credential: "other_credential",
        taxonomy_group_8: "taxonomy_group_8",
        other_identifier_type_20: "20",
        other_identifier_state_36: "36",
        other_identifier_type_27: "27",
        other_identifier_issuer_23: "other_identifier_issuer_23",
        taxonomy_switch_5: "5",
        taxonomy_group_11: "taxonomy_group_11",
        other_identifier_issuer_29: "other_identifier_issuer_29",
        other_identifier_state_5: "5",
        other_identifier_45: "other_identifier_45",
        other_identifier_state_2: "2",
        deactivate_date: ~D[2021-10-20],
        other_identifier_14: "other_identifier_14",
        other_identifier_state_4: "4",
        other_identifier_issuer_34: "other_identifier_issuer_34",
        other_identifier_issuer_40: "other_identifier_issuer_40",
        license_state_4: "4",
        other_identifier_type_44: "44",
        license_state_15: "15",
        off_phone: "off_phone",
        other_identifier_type_46: "46",
        license_num_3: "license_num_3",
        other_identifier_47: "other_identifier_47",
        enumeration_date: ~D[2021-10-20],
        other_identifier_state_19: "19",
        off_title: "off_title",
        other_identifier_6: "other_identifier_6",
        taxonomy_group_5: "taxonomy_group_5",
        npi: 1,
        other_identifier_44: "other_identifier_44",
        other_identifier_type_47: "47",
        license_num_12: "license_num_12",
        other_name_suffix: "other",
        other_identifier_state_14: "14",
        other_identifier_type_13: "13",
        other_identifier_issuer_36: "other_identifier_issuer_36",
        other_identifier_state_43: "43",
        other_identifier_issuer_27: "other_identifier_issuer_27",
        other_identifier_issuer_20: "other_identifier_issuer_20",
        taxonomy_switch_15: "t",
        other_identifier_1: "other_identifier_1",
        other_identifier_type_41: "41",
        other_identifier_type_22: "22",
        off_first_name: "off_first_name",
        other_identifier_21: "other_identifier_21"
      }

      assert {:ok, %Npi{} = npi} = Medical.create_npi(valid_attrs)
      assert npi.other_identifier_21 == "other_identifier_21"
      assert npi.off_first_name == "off_first_name"
      assert npi.other_identifier_type_22 == "22"
      assert npi.other_identifier_type_41 == "41"
      assert npi.other_identifier_1 == "other_identifier_1"
      assert npi.taxonomy_switch_15 == "t"
      assert npi.other_identifier_issuer_20 == "other_identifier_issuer_20"
      assert npi.other_identifier_issuer_27 == "other_identifier_issuer_27"
      assert npi.other_identifier_state_43 == "43"
      assert npi.other_identifier_issuer_36 == "other_identifier_issuer_36"
      assert npi.other_identifier_type_13 == "13"
      assert npi.other_identifier_state_14 == "14"
      assert npi.other_name_suffix == "other"
      assert npi.license_num_12 == "license_num_12"
      assert npi.other_identifier_type_47 == "47"
      assert npi.other_identifier_44 == "other_identifier_44"
      assert npi.npi == 1
      assert npi.taxonomy_group_5 == "taxonomy_group_5"
      assert npi.other_identifier_6 == "other_identifier_6"
      assert npi.off_title == "off_title"
      assert npi.other_identifier_state_19 == "19"
      assert npi.enumeration_date == ~D[2021-10-20]
      assert npi.other_identifier_47 == "other_identifier_47"
      assert npi.license_num_3 == "license_num_3"
      assert npi.other_identifier_type_46 == "46"
      assert npi.off_phone == "off_phone"
      assert npi.license_state_15 == "15"
      assert npi.other_identifier_type_44 == "44"
      assert npi.license_state_4 == "4"
      assert npi.other_identifier_issuer_40 == "other_identifier_issuer_40"
      assert npi.other_identifier_issuer_34 == "other_identifier_issuer_34"
      assert npi.other_identifier_state_4 == "4"
      assert npi.other_identifier_14 == "other_identifier_14"
      assert npi.deactivate_date == ~D[2021-10-20]
      assert npi.other_identifier_state_2 == "2"
      assert npi.other_identifier_45 == "other_identifier_45"
      assert npi.other_identifier_state_5 == "5"
      assert npi.other_identifier_issuer_29 == "other_identifier_issuer_29"
      assert npi.taxonomy_group_11 == "taxonomy_group_11"
      assert npi.taxonomy_switch_5 == "5"
      assert npi.other_identifier_issuer_23 == "other_identifier_issuer_23"
      assert npi.other_identifier_type_27 == "27"
      assert npi.other_identifier_state_36 == "36"
      assert npi.other_identifier_type_20 == "20"
      assert npi.taxonomy_group_8 == "taxonomy_group_8"
      assert npi.other_credential == "other_credential"
      assert npi.other_identifier_37 == "other_identifier_37"
      assert npi.other_identifier_state_26 == "26"
      assert npi.other_identifier_type_12 == "12"
      assert npi.taxonomy_group_1 == "taxonomy_group_1"
      assert npi.other_identifier_34 == "other_identifier_34"
      assert npi.other_identifier_issuer_10 == "other_identifier_issuer_10"
      assert npi.taxonomy_switch_7 == "7"
      assert npi.other_identifier_27 == "other_identifier_27"
      assert npi.taxonomy_switch_8 == "8"
      assert npi.other_identifier_issuer_8 == "other_identifier_issuer_8"
      assert npi.other_identifier_issuer_12 == "other_identifier_issuer_12"
      assert npi.other_identifier_state_46 == "46"
      assert npi.other_identifier_25 == "other_identifier_25"
      assert npi.other_identifier_issuer_19 == "other_identifier_issuer_19"
      assert npi.other_identifier_type_10 == "10"
      assert npi.other_identifier_issuer_26 == "other_identifier_issuer_26"
      assert npi.license_num_7 == "license_num_7"
      assert npi.taxonomy_2 == "taxonomy"
      assert npi.addr_practice_state == "addr_practice_state"
      assert npi.license_num_15 == "license_num_15"
      assert npi.license_num_8 == "license_num_8"
      assert npi.other_identifier_issuer_35 == "other_identifier_issuer_35"
      assert npi.other_identifier_23 == "other_identifier_23"
      assert npi.other_identifier_type_19 == "19"
      assert npi.license_num_10 == "license_num_10"
      assert npi.other_identifier_issuer_33 == "other_identifier_issuer_33"
      assert npi.taxonomy_switch_10 == "t"
      assert npi.other_identifier_state_23 == "23"
      assert npi.off_credentials == "off_credentials"
      assert npi.other_middle_name == "other_middle_name"
      assert npi.other_identifier_state_13 == "13"
      assert npi.taxonomy_7 == "taxonomy"
      assert npi.last_update == ~D[2021-10-20]
      assert npi.taxonomy_switch_14 == "t"
      assert npi.other_identifier_issuer_7 == "other_identifier_issuer_7"
      assert npi.other_identifier_11 == "other_identifier_11"
      assert npi.addr_practice_phone == "phone"
      assert npi.taxonomy_9 == "taxonomy"
      assert npi.other_identifier_type_21 == "21"
      assert npi.off_name_prefix == "off"
      assert npi.other_identifier_type_17 == "17"
      assert npi.license_num_2 == "license_num_2"
      assert npi.credentials == "credentials"
      assert npi.other_identifier_issuer_3 == "other_identifier_issuer_3"
      assert npi.other_identifier_issuer_39 == "other_identifier_issuer_39"
      assert npi.parent_lbn == "parent_lbn"
      assert npi.license_num_14 == "license_num_14"
      assert npi.other_identifier_state_33 == "33"
      assert npi.other_identifier_issuer_38 == "other_identifier_issuer_38"
      assert npi.other_identifier_state_31 == "31"
      assert npi.taxonomy_switch_11 == "t"
      assert npi.license_state_1 == "1"
      assert npi.other_identifier_type_14 == "14"
      assert npi.entity_type == 42
      assert npi.other_identifier_20 == "other_identifier_20"
      assert npi.other_identifier_issuer_25 == "other_identifier_issuer_25"
      assert npi.other_identifier_state_41 == "41"
      assert npi.other_identifier_issuer_31 == "other_identifier_issuer_31"
      assert npi.other_name_prefix == "other"
      assert npi.other_identifier_state_3 == "3"
      assert npi.other_identifier_50 == "other_identifier_50"
      assert npi.other_identifier_issuer_48 == "other_identifier_issuer_48"
      assert npi.license_state_7 == "7"
      assert npi.taxonomy_12 == "taxonomy"
      assert npi.other_identifier_17 == "other_identifier_17"
      assert npi.license_num_5 == "license_num_5"
      assert npi.other_identifier_24 == "other_identifier_24"
      assert npi.org_subpart == "o"
      assert npi.taxonomy_group_3 == "taxonomy_group_3"
      assert npi.taxonomy_switch_3 == "3"
      assert npi.addr_mail_country == "ad"
      assert npi.other_identifier_issuer_32 == "other_identifier_issuer_32"
      assert npi.license_state_6 == "6"
      assert npi.license_num_4 == "license_num_4"
      assert npi.other_identifier_type_11 == "11"
      assert npi.addr_mail_first == "addr_mail_first"
      assert npi.other_identifier_type_50 == "50"
      assert npi.addr_practice_first == "addr_practice_first"
      assert npi.other_identifier_type_34 == "34"
      assert npi.other_identifier_31 == "other_identifier_31"
      assert npi.other_identifier_state_12 == "12"
      assert npi.other_identifier_type_9 == "9"
      assert npi.other_identifier_issuer_45 == "other_identifier_issuer_45"
      assert npi.other_identifier_state_11 == "11"
      assert npi.other_identifier_40 == "other_identifier_40"
      assert npi.taxonomy_switch_2 == "2"
      assert npi.other_identifier_type_28 == "28"
      assert npi.taxonomy_group_7 == "taxonomy_group_7"
      assert npi.other_identifier_state_35 == "35"
      assert npi.license_state_3 == "3"
      assert npi.other_identifier_state_40 == "40"
      assert npi.other_identifier_issuer_21 == "other_identifier_issuer_21"
      assert npi.other_identifier_3 == "other_identifier_3"
      assert npi.other_identifier_issuer_37 == "other_identifier_issuer_37"
      assert npi.other_identifier_type_49 == "49"
      assert npi.other_identifier_type_40 == "40"
      assert npi.other_org_name == "other_org_name"
      assert npi.other_identifier_42 == "other_identifier_42"
      assert npi.other_identifier_issuer_1 == "other_identifier_issuer_1"
      assert npi.other_identifier_46 == "other_identifier_46"
      assert npi.addr_mail_city == "addr_mail_city"
      assert npi.other_identifier_issuer_17 == "other_identifier_issuer_17"
      assert npi.other_identifier_49 == "other_identifier_49"
      assert npi.other_identifier_state_9 == "9"
      assert npi.other_identifier_type_37 == "37"
      assert npi.other_identifier_36 == "other_identifier_36"
      assert npi.taxonomy_13 == "taxonomy"
      assert npi.license_state_2 == "2"
      assert npi.other_identifier_issuer_22 == "other_identifier_issuer_22"
      assert npi.other_identifier_state_30 == "30"
      assert npi.off_name_suffix == "off"
      assert npi.addr_practice_fax == "addr_practice_fax"
      assert npi.other_identifier_26 == "other_identifier_26"
      assert npi.other_identifier_type_8 == "8"
      assert npi.other_identifier_7 == "other_identifier_7"
      assert npi.other_identifier_type_5 == "5"
      assert npi.other_identifier_18 == "other_identifier_18"
      assert npi.other_identifier_33 == "other_identifier_33"
      assert npi.other_identifier_type_24 == "24"
      assert npi.other_identifier_type_7 == "7"
      assert npi.other_identifier_issuer_6 == "other_identifier_issuer_6"
      assert npi.other_identifier_type_25 == "25"
      assert npi.first_name == "first_name"
      assert npi.taxonomy_switch_1 == "1"
      assert npi.other_identifier_state_21 == "21"
      assert npi.license_state_12 == "12"
      assert npi.other_identifier_state_25 == "25"
      assert npi.taxonomy_group_4 == "taxonomy_group_4"
      assert npi.taxonomy_switch_4 == "4"
      assert npi.other_identifier_state_20 == "20"
      assert npi.addr_practice_country == "ad"
      assert npi.other_identifier_type_30 == "30"
      assert npi.taxonomy_5 == "taxonomy"
      assert npi.other_identifier_state_18 == "18"
      assert npi.other_identifier_state_7 == "7"
      assert npi.parent_tin == "parenttin"
      assert npi.other_identifier_type_3 == "3"
      assert npi.other_identifier_state_34 == "34"
      assert npi.org_name == "org_name"
      assert npi.other_identifier_state_49 == "49"
      assert npi.other_identifier_state_29 == "29"
      assert npi.taxonomy_1 == "taxonomy"
      assert npi.sole_proprieter == "s"
      assert npi.other_identifier_38 == "other_identifier_38"
      assert npi.other_identifier_state_28 == "28"
      assert npi.addr_mail_postal == "addr_mail_postal"
      assert npi.license_state_13 == "13"
      assert npi.other_org_name_type == "o"
      assert npi.other_identifier_8 == "other_identifier_8"
      assert npi.other_last_name == "other_last_name"
      assert npi.other_identifier_type_31 == "31"
      assert npi.other_identifier_issuer_15 == "other_identifier_issuer_15"
      assert npi.other_identifier_type_4 == "4"
      assert npi.other_identifier_2 == "other_identifier_2"
      assert npi.other_identifier_13 == "other_identifier_13"
      assert npi.other_identifier_issuer_11 == "other_identifier_issuer_11"
      assert npi.last_name == "last_name"
      assert npi.other_identifier_29 == "other_identifier_29"
      assert npi.taxonomy_group_15 == "taxonomy_group_15"
      assert npi.license_num_13 == "license_num_13"
      assert npi.other_identifier_type_45 == "45"
      assert npi.other_identifier_12 == "other_identifier_12"
      assert npi.other_identifier_state_27 == "27"
      assert npi.other_identifier_issuer_5 == "other_identifier_issuer_5"
      assert npi.taxonomy_group_6 == "taxonomy_group_6"
      assert npi.other_identifier_issuer_13 == "other_identifier_issuer_13"
      assert npi.license_state_10 == "10"
      assert npi.taxonomy_switch_6 == "6"
      assert npi.taxonomy_14 == "taxonomy"
      assert npi.license_num_1 == "license_num_1"
      assert npi.other_identifier_type_33 == "33"
      assert npi.taxonomy_switch_9 == "9"
      assert npi.other_identifier_16 == "other_identifier_16"
      assert npi.gender == "g"
      assert npi.other_identifier_state_47 == "47"
      assert npi.other_identifier_state_6 == "6"
      assert npi.license_state_14 == "14"
      assert npi.other_first_name == "other_first_name"
      assert npi.other_identifier_issuer_44 == "other_identifier_issuer_44"
      assert npi.other_identifier_state_22 == "22"
      assert npi.other_identifier_state_42 == "42"
      assert npi.other_identifier_issuer_2 == "other_identifier_issuer_2"
      assert npi.other_identifier_type_35 == "35"
      assert npi.taxonomy_6 == "taxonomy"
      assert npi.other_identifier_issuer_14 == "other_identifier_issuer_14"
      assert npi.taxonomy_15 == "taxonomy"
      assert npi.license_state_9 == "9"
      assert npi.other_identifier_state_50 == "50"
      assert npi.other_identifier_22 == "other_identifier_22"
      assert npi.other_identifier_type_23 == "23"
      assert npi.other_identifier_28 == "other_identifier_28"
      assert npi.other_identifier_state_16 == "16"
      assert npi.ein == "ein"
      assert npi.other_identifier_state_24 == "24"
      assert npi.other_identifier_32 == "other_identifier_32"
      assert npi.other_identifier_type_29 == "29"
      assert npi.other_identifier_state_17 == "17"
      assert npi.other_identifier_state_39 == "39"
      assert npi.other_identifier_type_18 == "18"
      assert npi.other_identifier_type_39 == "39"
      assert npi.other_identifier_48 == "other_identifier_48"
      assert npi.addr_practice_postal == "addr_practice_postal"
      assert npi.taxonomy_switch_13 == "t"
      assert npi.name_suffix == "name"
      assert npi.other_identifier_5 == "other_identifier_5"
      assert npi.name_prefix == "name"
      assert npi.other_identifier_type_43 == "43"
      assert npi.other_identifier_issuer_18 == "other_identifier_issuer_18"
      assert npi.other_identifier_state_32 == "32"
      assert npi.other_identifier_type_2 == "2"
      assert npi.other_identifier_issuer_46 == "other_identifier_issuer_46"
      assert npi.taxonomy_4 == "taxonomy"
      assert npi.taxonomy_group_14 == "taxonomy_group_14"
      assert npi.addr_practice_second == "addr_practice_second"
      assert npi.other_identifier_issuer_30 == "other_identifier_issuer_30"
      assert npi.cert_date == ~D[2021-10-20]
      assert npi.other_identifier_41 == "other_identifier_41"
      assert npi.taxonomy_group_13 == "taxonomy_group_13"
      assert npi.other_identifier_type_15 == "15"
      assert npi.other_identifier_15 == "other_identifier_15"
      assert npi.addr_mail_second == "addr_mail_second"
      assert npi.other_identifier_issuer_28 == "other_identifier_issuer_28"
      assert npi.other_identifier_39 == "other_identifier_39"
      assert npi.other_identifier_state_37 == "37"
      assert npi.other_identifier_state_48 == "48"
      assert npi.reactivate_date == ~D[2021-10-20]
      assert npi.taxonomy_group_12 == "taxonomy_group_12"
      assert npi.deactivate_reason == "de"
      assert npi.other_identifier_30 == "other_identifier_30"
      assert npi.license_num_6 == "license_num_6"
      assert npi.other_identifier_type_16 == "16"
      assert npi.other_identifier_type_1 == "1"
      assert npi.other_identifier_issuer_41 == "other_identifier_issuer_41"
      assert npi.off_middle_name == "off_middle_name"
      assert npi.taxonomy_11 == "taxonomy"
      assert npi.other_identifier_issuer_47 == "other_identifier_issuer_47"
      assert npi.addr_mail_phone == "addr_mail_phone"
      assert npi.other_identifier_state_1 == "1"
      assert npi.other_identifier_issuer_16 == "other_identifier_issuer_16"
      assert npi.off_last_name == "off_last_name"
      assert npi.license_state_11 == "11"
      assert npi.other_identifier_type_6 == "6"
      assert npi.taxonomy_10 == "taxonomy"
      assert npi.other_identifier_type_38 == "38"
      assert npi.other_identifier_state_38 == "38"
      assert npi.other_identifier_10 == "other_identifier_10"
      assert npi.other_identifier_state_15 == "15"
      assert npi.other_identifier_issuer_50 == "other_identifier_issuer_50"
      assert npi.other_identifier_type_36 == "36"
      assert npi.addr_mail_state == "addr_mail_state"
      assert npi.license_state_5 == "5"
      assert npi.other_last_name_code == "other_last_name_code"
      assert npi.other_identifier_issuer_4 == "other_identifier_issuer_4"
      assert npi.other_identifier_43 == "other_identifier_43"
      assert npi.taxonomy_switch_12 == "t"
      assert npi.other_identifier_issuer_9 == "other_identifier_issuer_9"
      assert npi.other_identifier_issuer_24 == "other_identifier_issuer_24"
      assert npi.addr_mail_fax == "addr_mail_fax"
      assert npi.other_identifier_type_26 == "26"
      assert npi.license_num_11 == "license_num_11"
      assert npi.other_identifier_state_44 == "44"
      assert npi.other_identifier_4 == "other_identifier_4"
      assert npi.other_identifier_19 == "other_identifier_19"
      assert npi.license_state_8 == "8"
      assert npi.other_identifier_issuer_42 == "other_identifier_issuer_42"
      assert npi.other_identifier_type_32 == "32"
      assert npi.other_identifier_issuer_43 == "other_identifier_issuer_43"
      assert npi.other_identifier_9 == "other_identifier_9"
      assert npi.license_num_9 == "license_num_9"
      assert npi.other_identifier_type_42 == "42"
      assert npi.other_identifier_issuer_49 == "other_identifier_issuer_49"
      assert npi.other_identifier_state_45 == "45"
      assert npi.taxonomy_group_9 == "taxonomy_group_9"
      assert npi.other_identifier_35 == "other_identifier_35"
      assert npi.other_identifier_type_48 == "48"
      assert npi.middle_name == "middle_name"
      assert npi.taxonomy_8 == "taxonomy"
      assert npi.other_identifier_state_10 == "10"
      assert npi.addr_practice_city == "addr_practice_city"
      assert npi.taxonomy_3 == "taxonomy"
      assert npi.other_identifier_state_8 == "8"
      assert npi.taxonomy_group_10 == "taxonomy_group_10"
      assert npi.taxonomy_group_2 == "taxonomy_group_2"
    end

    test "create_npi/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Medical.create_npi(@invalid_attrs)
    end

    test "update_npi/2 with valid data updates the npi" do
      npi = npi_fixture()

      update_attrs = %{
        taxonomy_group_2: "taxonomy_group_2",
        taxonomy_group_10: "taxonomy_group_10",
        other_identifier_state_8: "8",
        taxonomy_3: "taxonomy",
        addr_practice_city: "addr_practice_city",
        other_identifier_state_10: "10",
        taxonomy_8: "taxonomy",
        middle_name: "middle_name",
        other_identifier_type_48: "48",
        other_identifier_35: "other_identifier_35",
        taxonomy_group_9: "taxonomy_group_9",
        other_identifier_state_45: "45",
        other_identifier_issuer_49: "other_identifier_issuer_49",
        other_identifier_type_42: "42",
        license_num_9: "license_num_9",
        other_identifier_9: "other_identifier_9",
        other_identifier_issuer_43: "other_identifier_issuer_43",
        other_identifier_type_32: "32",
        other_identifier_issuer_42: "other_identifier_issuer_42",
        license_state_8: "8",
        other_identifier_19: "other_identifier_19",
        other_identifier_4: "other_identifier_4",
        other_identifier_state_44: "44",
        license_num_11: "license_num_11",
        other_identifier_type_26: "26",
        addr_mail_fax: "addr_mail_fax",
        other_identifier_issuer_24: "other_identifier_issuer_24",
        other_identifier_issuer_9: "other_identifier_issuer_9",
        taxonomy_switch_12: "t",
        other_identifier_43: "other_identifier_43",
        other_identifier_issuer_4: "other_identifier_issuer_4",
        other_last_name_code: "other_last_name_code",
        license_state_5: "5",
        addr_mail_state: "addr_mail_state",
        other_identifier_type_36: "36",
        other_identifier_issuer_50: "other_identifier_issuer_50",
        other_identifier_state_15: "15",
        other_identifier_10: "other_identifier_10",
        other_identifier_state_38: "38",
        other_identifier_type_38: "38",
        taxonomy_10: "taxonomy",
        other_identifier_type_6: "6",
        license_state_11: "11",
        off_last_name: "off_last_name",
        other_identifier_issuer_16: "other_identifier_issuer_16",
        other_identifier_state_1: "1",
        addr_mail_phone: "addr_mail_phone",
        other_identifier_issuer_47: "other_identifier_issuer_47",
        taxonomy_11: "taxonomy",
        off_middle_name: "off_middle_name",
        other_identifier_issuer_41: "other_identifier_issuer_41",
        other_identifier_type_1: "1",
        other_identifier_type_16: "16",
        license_num_6: "license_num_6",
        other_identifier_30: "other_identifier_30",
        deactivate_reason: "de",
        taxonomy_group_12: "taxonomy_group_12",
        reactivate_date: ~D[2021-10-21],
        other_identifier_state_48: "48",
        other_identifier_state_37: "37",
        other_identifier_39: "other_identifier_39",
        other_identifier_issuer_28: "other_identifier_issuer_28",
        addr_mail_second: "addr_mail_second",
        other_identifier_15: "other_identifier_15",
        other_identifier_type_15: "15",
        taxonomy_group_13: "taxonomy_group_13",
        other_identifier_41: "other_identifier_41",
        cert_date: ~D[2021-10-21],
        other_identifier_issuer_30: "other_identifier_issuer_30",
        addr_practice_second: "addr_practice_second",
        taxonomy_group_14: "taxonomy_group_14",
        taxonomy_4: "taxonomy",
        other_identifier_issuer_46: "other_identifier_issuer_46",
        other_identifier_type_2: "2",
        other_identifier_state_32: "32",
        other_identifier_issuer_18: "other_identifier_issuer_18",
        other_identifier_type_43: "43",
        name_prefix: "name",
        other_identifier_5: "other_identifier_5",
        name_suffix: "name",
        taxonomy_switch_13: "t",
        addr_practice_postal: "addr_practice_postal",
        other_identifier_48: "other_identifier_48",
        other_identifier_type_39: "39",
        other_identifier_type_18: "18",
        other_identifier_state_39: "39",
        other_identifier_state_17: "17",
        other_identifier_type_29: "29",
        other_identifier_32: "other_identifier_32",
        other_identifier_state_24: "24",
        ein: "ein",
        other_identifier_state_16: "16",
        other_identifier_28: "other_identifier_28",
        other_identifier_type_23: "23",
        other_identifier_22: "other_identifier_22",
        other_identifier_state_50: "50",
        license_state_9: "9",
        taxonomy_15: "taxonomy",
        other_identifier_issuer_14: "other_identifier_issuer_14",
        taxonomy_6: "taxonomy",
        other_identifier_type_35: "35",
        other_identifier_issuer_2: "other_identifier_issuer_2",
        other_identifier_state_42: "42",
        other_identifier_state_22: "22",
        other_identifier_issuer_44: "other_identifier_issuer_44",
        other_first_name: "other_first_name",
        license_state_14: "14",
        other_identifier_state_6: "6",
        other_identifier_state_47: "47",
        gender: "g",
        other_identifier_16: "other_identifier_16",
        taxonomy_switch_9: "9",
        other_identifier_type_33: "33",
        license_num_1: "license_num_1",
        taxonomy_14: "taxonomy",
        taxonomy_switch_6: "6",
        license_state_10: "10",
        other_identifier_issuer_13: "other_identifier_issuer_13",
        taxonomy_group_6: "taxonomy_group_6",
        other_identifier_issuer_5: "other_identifier_issuer_5",
        other_identifier_state_27: "27",
        other_identifier_12: "other_identifier_12",
        other_identifier_type_45: "45",
        license_num_13: "license_num_13",
        taxonomy_group_15: "taxonomy_group_15",
        other_identifier_29: "other_identifier_29",
        last_name: "last_name",
        other_identifier_issuer_11: "other_identifier_issuer_11",
        other_identifier_13: "other_identifier_13",
        other_identifier_2: "other_identifier_2",
        other_identifier_type_4: "4",
        other_identifier_issuer_15: "other_identifier_issuer_15",
        other_identifier_type_31: "31",
        other_last_name: "other_last_name",
        other_identifier_8: "other_identifier_8",
        other_org_name_type: "o",
        license_state_13: "13",
        addr_mail_postal: "addr_mail_postal",
        other_identifier_state_28: "28",
        other_identifier_38: "other_identifier_38",
        sole_proprieter: "s",
        taxonomy_1: "taxonomy",
        other_identifier_state_29: "29",
        other_identifier_state_49: "49",
        org_name: "org_name",
        other_identifier_state_34: "34",
        other_identifier_type_3: "3",
        parent_tin: "parenttin",
        other_identifier_state_7: "7",
        other_identifier_state_18: "18",
        taxonomy_5: "taxonomy",
        other_identifier_type_30: "30",
        addr_practice_country: "ad",
        other_identifier_state_20: "20",
        taxonomy_switch_4: "4",
        taxonomy_group_4: "taxonomy_group_4",
        other_identifier_state_25: "25",
        license_state_12: "12",
        other_identifier_state_21: "21",
        taxonomy_switch_1: "1",
        first_name: "first_name",
        other_identifier_type_25: "25",
        other_identifier_issuer_6: "other_identifier_issuer_6",
        other_identifier_type_7: "7",
        other_identifier_type_24: "24",
        other_identifier_33: "other_identifier_33",
        other_identifier_18: "other_identifier_18",
        other_identifier_type_5: "5",
        other_identifier_7: "other_identifier_7",
        other_identifier_type_8: "8",
        other_identifier_26: "other_identifier_26",
        addr_practice_fax: "addr_practice_fax",
        off_name_suffix: "off",
        other_identifier_state_30: "30",
        other_identifier_issuer_22: "other_identifier_issuer_22",
        license_state_2: "2",
        taxonomy_13: "taxonomy",
        other_identifier_36: "other_identifier_36",
        other_identifier_type_37: "37",
        other_identifier_state_9: "9",
        other_identifier_49: "other_identifier_49",
        other_identifier_issuer_17: "other_identifier_issuer_17",
        addr_mail_city: "addr_mail_city",
        other_identifier_46: "other_identifier_46",
        other_identifier_issuer_1: "other_identifier_issuer_1",
        other_identifier_42: "other_identifier_42",
        other_org_name: "other_org_name",
        other_identifier_type_40: "40",
        other_identifier_type_49: "49",
        other_identifier_issuer_37: "other_identifier_issuer_37",
        other_identifier_3: "other_identifier_3",
        other_identifier_issuer_21: "other_identifier_issuer_21",
        other_identifier_state_40: "40",
        license_state_3: "3",
        other_identifier_state_35: "35",
        taxonomy_group_7: "taxonomy_group_7",
        other_identifier_type_28: "28",
        taxonomy_switch_2: "2",
        other_identifier_40: "other_identifier_40",
        other_identifier_state_11: "11",
        other_identifier_issuer_45: "other_identifier_issuer_45",
        other_identifier_type_9: "9",
        other_identifier_state_12: "12",
        other_identifier_31: "other_identifier_31",
        other_identifier_type_34: "34",
        addr_practice_first: "addr_practice_first",
        other_identifier_type_50: "50",
        addr_mail_first: "addr_mail_first",
        other_identifier_type_11: "11",
        license_num_4: "license_num_4",
        license_state_6: "6",
        other_identifier_issuer_32: "other_identifier_issuer_32",
        addr_mail_country: "ad",
        taxonomy_switch_3: "3",
        taxonomy_group_3: "taxonomy_group_3",
        org_subpart: "o",
        other_identifier_24: "other_identifier_24",
        license_num_5: "license_num_5",
        other_identifier_17: "other_identifier_17",
        taxonomy_12: "taxonomy",
        license_state_7: "7",
        other_identifier_issuer_48: "other_identifier_issuer_48",
        other_identifier_50: "other_identifier_50",
        other_identifier_state_3: "3",
        other_name_prefix: "other",
        other_identifier_issuer_31: "other_identifier_issuer_31",
        other_identifier_state_41: "41",
        other_identifier_issuer_25: "other_identifier_issuer_25",
        other_identifier_20: "other_identifier_20",
        entity_type: 43,
        other_identifier_type_14: "14",
        license_state_1: "1",
        taxonomy_switch_11: "t",
        other_identifier_state_31: "31",
        other_identifier_issuer_38: "other_identifier_issuer_38",
        other_identifier_state_33: "33",
        license_num_14: "license_num_14",
        parent_lbn: "parent_lbn",
        other_identifier_issuer_39: "other_identifier_issuer_39",
        other_identifier_issuer_3: "other_identifier_issuer_3",
        credentials: "credentials",
        license_num_2: "license_num_2",
        other_identifier_type_17: "17",
        off_name_prefix: "off",
        other_identifier_type_21: "21",
        taxonomy_9: "taxonomy",
        addr_practice_phone: "phone",
        other_identifier_11: "other_identifier_11",
        other_identifier_issuer_7: "other_identifier_issuer_7",
        taxonomy_switch_14: "t",
        last_update: ~D[2021-10-21],
        taxonomy_7: "taxonomy",
        other_identifier_state_13: "13",
        other_middle_name: "other_middle_name",
        off_credentials: "off_credentials",
        other_identifier_state_23: "23",
        taxonomy_switch_10: "t",
        other_identifier_issuer_33: "other_identifier_issuer_33",
        license_num_10: "license_num_10",
        other_identifier_type_19: "19",
        other_identifier_23: "other_identifier_23",
        other_identifier_issuer_35: "other_identifier_issuer_35",
        license_num_8: "license_num_8",
        license_num_15: "license_num_15",
        addr_practice_state: "addr_practice_state",
        taxonomy_2: "taxonomy",
        license_num_7: "license_num_7",
        other_identifier_issuer_26: "other_identifier_issuer_26",
        other_identifier_type_10: "10",
        other_identifier_issuer_19: "other_identifier_issuer_19",
        other_identifier_25: "other_identifier_25",
        other_identifier_state_46: "46",
        other_identifier_issuer_12: "other_identifier_issuer_12",
        other_identifier_issuer_8: "other_identifier_issuer_8",
        taxonomy_switch_8: "8",
        other_identifier_27: "other_identifier_27",
        taxonomy_switch_7: "7",
        other_identifier_issuer_10: "other_identifier_issuer_10",
        other_identifier_34: "other_identifier_34",
        taxonomy_group_1: "taxonomy_group_1",
        other_identifier_type_12: "12",
        other_identifier_state_26: "26",
        other_identifier_37: "other_identifier_37",
        other_credential: "other_credential",
        taxonomy_group_8: "taxonomy_group_8",
        other_identifier_type_20: "20",
        other_identifier_state_36: "36",
        other_identifier_type_27: "27",
        other_identifier_issuer_23: "other_identifier_issuer_23",
        taxonomy_switch_5: "5",
        taxonomy_group_11: "taxonomy_group_11",
        other_identifier_issuer_29: "other_identifier_issuer_29",
        other_identifier_state_5: "5",
        other_identifier_45: "other_identifier_45",
        other_identifier_state_2: "2",
        deactivate_date: ~D[2021-10-21],
        other_identifier_14: "other_identifier_14",
        other_identifier_state_4: "4",
        other_identifier_issuer_34: "other_identifier_issuer_34",
        other_identifier_issuer_40: "other_identifier_issuer_40",
        license_state_4: "4",
        other_identifier_type_44: "44",
        license_state_15: "15",
        off_phone: "off_phone",
        other_identifier_type_46: "46",
        license_num_3: "license_num_3",
        other_identifier_47: "other_identifier_47",
        enumeration_date: ~D[2021-10-21],
        other_identifier_state_19: "19",
        off_title: "off_title",
        other_identifier_6: "other_identifier_6",
        taxonomy_group_5: "taxonomy_group_5",
        npi: 1,
        other_identifier_44: "other_identifier_44",
        other_identifier_type_47: "47",
        license_num_12: "license_num_12",
        other_name_suffix: "other",
        other_identifier_state_14: "14",
        other_identifier_type_13: "13",
        other_identifier_issuer_36: "other_identifier_issuer_36",
        other_identifier_state_43: "43",
        other_identifier_issuer_27: "other_identifier_issuer_27",
        other_identifier_issuer_20: "other_identifier_issuer_20",
        taxonomy_switch_15: "t",
        other_identifier_1: "other_identifier_1",
        other_identifier_type_41: "41",
        other_identifier_type_22: "22",
        off_first_name: "off_first_name",
        other_identifier_21: "other_identifier_21"
      }

      assert {:ok, %Npi{} = npi} = Medical.update_npi(npi, update_attrs)
      assert npi.other_identifier_21 == "other_identifier_21"
      assert npi.off_first_name == "off_first_name"
      assert npi.other_identifier_type_22 == "22"
      assert npi.other_identifier_type_41 == "41"
      assert npi.other_identifier_1 == "other_identifier_1"
      assert npi.taxonomy_switch_15 == "t"
      assert npi.other_identifier_issuer_20 == "other_identifier_issuer_20"
      assert npi.other_identifier_issuer_27 == "other_identifier_issuer_27"
      assert npi.other_identifier_state_43 == "43"
      assert npi.other_identifier_issuer_36 == "other_identifier_issuer_36"
      assert npi.other_identifier_type_13 == "13"
      assert npi.other_identifier_state_14 == "14"
      assert npi.other_name_suffix == "other"
      assert npi.license_num_12 == "license_num_12"
      assert npi.other_identifier_type_47 == "47"
      assert npi.other_identifier_44 == "other_identifier_44"
      assert npi.npi == 1
      assert npi.taxonomy_group_5 == "taxonomy_group_5"
      assert npi.other_identifier_6 == "other_identifier_6"
      assert npi.off_title == "off_title"
      assert npi.other_identifier_state_19 == "19"
      assert npi.enumeration_date == ~D[2021-10-21]
      assert npi.other_identifier_47 == "other_identifier_47"
      assert npi.license_num_3 == "license_num_3"
      assert npi.other_identifier_type_46 == "46"
      assert npi.off_phone == "off_phone"
      assert npi.license_state_15 == "15"
      assert npi.other_identifier_type_44 == "44"
      assert npi.license_state_4 == "4"
      assert npi.other_identifier_issuer_40 == "other_identifier_issuer_40"
      assert npi.other_identifier_issuer_34 == "other_identifier_issuer_34"
      assert npi.other_identifier_state_4 == "4"
      assert npi.other_identifier_14 == "other_identifier_14"
      assert npi.deactivate_date == ~D[2021-10-21]
      assert npi.other_identifier_state_2 == "2"
      assert npi.other_identifier_45 == "other_identifier_45"
      assert npi.other_identifier_state_5 == "5"
      assert npi.other_identifier_issuer_29 == "other_identifier_issuer_29"
      assert npi.taxonomy_group_11 == "taxonomy_group_11"
      assert npi.taxonomy_switch_5 == "5"
      assert npi.other_identifier_issuer_23 == "other_identifier_issuer_23"
      assert npi.other_identifier_type_27 == "27"
      assert npi.other_identifier_state_36 == "36"
      assert npi.other_identifier_type_20 == "20"
      assert npi.taxonomy_group_8 == "taxonomy_group_8"
      assert npi.other_credential == "other_credential"
      assert npi.other_identifier_37 == "other_identifier_37"
      assert npi.other_identifier_state_26 == "26"
      assert npi.other_identifier_type_12 == "12"
      assert npi.taxonomy_group_1 == "taxonomy_group_1"
      assert npi.other_identifier_34 == "other_identifier_34"
      assert npi.other_identifier_issuer_10 == "other_identifier_issuer_10"
      assert npi.taxonomy_switch_7 == "7"
      assert npi.other_identifier_27 == "other_identifier_27"
      assert npi.taxonomy_switch_8 == "8"
      assert npi.other_identifier_issuer_8 == "other_identifier_issuer_8"
      assert npi.other_identifier_issuer_12 == "other_identifier_issuer_12"
      assert npi.other_identifier_state_46 == "46"
      assert npi.other_identifier_25 == "other_identifier_25"
      assert npi.other_identifier_issuer_19 == "other_identifier_issuer_19"
      assert npi.other_identifier_type_10 == "10"
      assert npi.other_identifier_issuer_26 == "other_identifier_issuer_26"
      assert npi.license_num_7 == "license_num_7"
      assert npi.taxonomy_2 == "taxonomy"
      assert npi.addr_practice_state == "addr_practice_state"
      assert npi.license_num_15 == "license_num_15"
      assert npi.license_num_8 == "license_num_8"
      assert npi.other_identifier_issuer_35 == "other_identifier_issuer_35"
      assert npi.other_identifier_23 == "other_identifier_23"
      assert npi.other_identifier_type_19 == "19"
      assert npi.license_num_10 == "license_num_10"
      assert npi.other_identifier_issuer_33 == "other_identifier_issuer_33"
      assert npi.taxonomy_switch_10 == "t"
      assert npi.other_identifier_state_23 == "23"
      assert npi.off_credentials == "off_credentials"
      assert npi.other_middle_name == "other_middle_name"
      assert npi.other_identifier_state_13 == "13"
      assert npi.taxonomy_7 == "taxonomy"
      assert npi.last_update == ~D[2021-10-21]
      assert npi.taxonomy_switch_14 == "t"
      assert npi.other_identifier_issuer_7 == "other_identifier_issuer_7"
      assert npi.other_identifier_11 == "other_identifier_11"
      assert npi.addr_practice_phone == "phone"
      assert npi.taxonomy_9 == "taxonomy"
      assert npi.other_identifier_type_21 == "21"
      assert npi.off_name_prefix == "off"
      assert npi.other_identifier_type_17 == "17"
      assert npi.license_num_2 == "license_num_2"
      assert npi.credentials == "credentials"
      assert npi.other_identifier_issuer_3 == "other_identifier_issuer_3"
      assert npi.other_identifier_issuer_39 == "other_identifier_issuer_39"
      assert npi.parent_lbn == "parent_lbn"
      assert npi.license_num_14 == "license_num_14"
      assert npi.other_identifier_state_33 == "33"
      assert npi.other_identifier_issuer_38 == "other_identifier_issuer_38"
      assert npi.other_identifier_state_31 == "31"
      assert npi.taxonomy_switch_11 == "t"
      assert npi.license_state_1 == "1"
      assert npi.other_identifier_type_14 == "14"
      assert npi.entity_type == 43
      assert npi.other_identifier_20 == "other_identifier_20"
      assert npi.other_identifier_issuer_25 == "other_identifier_issuer_25"
      assert npi.other_identifier_state_41 == "41"
      assert npi.other_identifier_issuer_31 == "other_identifier_issuer_31"
      assert npi.other_name_prefix == "other"
      assert npi.other_identifier_state_3 == "3"
      assert npi.other_identifier_50 == "other_identifier_50"
      assert npi.other_identifier_issuer_48 == "other_identifier_issuer_48"
      assert npi.license_state_7 == "7"
      assert npi.taxonomy_12 == "taxonomy"
      assert npi.other_identifier_17 == "other_identifier_17"
      assert npi.license_num_5 == "license_num_5"
      assert npi.other_identifier_24 == "other_identifier_24"
      assert npi.org_subpart == "o"
      assert npi.taxonomy_group_3 == "taxonomy_group_3"
      assert npi.taxonomy_switch_3 == "3"
      assert npi.addr_mail_country == "ad"
      assert npi.other_identifier_issuer_32 == "other_identifier_issuer_32"
      assert npi.license_state_6 == "6"
      assert npi.license_num_4 == "license_num_4"
      assert npi.other_identifier_type_11 == "11"
      assert npi.addr_mail_first == "addr_mail_first"
      assert npi.other_identifier_type_50 == "50"
      assert npi.addr_practice_first == "addr_practice_first"
      assert npi.other_identifier_type_34 == "34"
      assert npi.other_identifier_31 == "other_identifier_31"
      assert npi.other_identifier_state_12 == "12"
      assert npi.other_identifier_type_9 == "9"
      assert npi.other_identifier_issuer_45 == "other_identifier_issuer_45"
      assert npi.other_identifier_state_11 == "11"
      assert npi.other_identifier_40 == "other_identifier_40"
      assert npi.taxonomy_switch_2 == "2"
      assert npi.other_identifier_type_28 == "28"
      assert npi.taxonomy_group_7 == "taxonomy_group_7"
      assert npi.other_identifier_state_35 == "35"
      assert npi.license_state_3 == "3"
      assert npi.other_identifier_state_40 == "40"
      assert npi.other_identifier_issuer_21 == "other_identifier_issuer_21"
      assert npi.other_identifier_3 == "other_identifier_3"
      assert npi.other_identifier_issuer_37 == "other_identifier_issuer_37"
      assert npi.other_identifier_type_49 == "49"
      assert npi.other_identifier_type_40 == "40"
      assert npi.other_org_name == "other_org_name"
      assert npi.other_identifier_42 == "other_identifier_42"
      assert npi.other_identifier_issuer_1 == "other_identifier_issuer_1"
      assert npi.other_identifier_46 == "other_identifier_46"
      assert npi.addr_mail_city == "addr_mail_city"
      assert npi.other_identifier_issuer_17 == "other_identifier_issuer_17"
      assert npi.other_identifier_49 == "other_identifier_49"
      assert npi.other_identifier_state_9 == "9"
      assert npi.other_identifier_type_37 == "37"
      assert npi.other_identifier_36 == "other_identifier_36"
      assert npi.taxonomy_13 == "taxonomy"
      assert npi.license_state_2 == "2"
      assert npi.other_identifier_issuer_22 == "other_identifier_issuer_22"
      assert npi.other_identifier_state_30 == "30"
      assert npi.off_name_suffix == "off"
      assert npi.addr_practice_fax == "addr_practice_fax"
      assert npi.other_identifier_26 == "other_identifier_26"
      assert npi.other_identifier_type_8 == "8"
      assert npi.other_identifier_7 == "other_identifier_7"
      assert npi.other_identifier_type_5 == "5"
      assert npi.other_identifier_18 == "other_identifier_18"
      assert npi.other_identifier_33 == "other_identifier_33"
      assert npi.other_identifier_type_24 == "24"
      assert npi.other_identifier_type_7 == "7"
      assert npi.other_identifier_issuer_6 == "other_identifier_issuer_6"
      assert npi.other_identifier_type_25 == "25"
      assert npi.first_name == "first_name"
      assert npi.taxonomy_switch_1 == "1"
      assert npi.other_identifier_state_21 == "21"
      assert npi.license_state_12 == "12"
      assert npi.other_identifier_state_25 == "25"
      assert npi.taxonomy_group_4 == "taxonomy_group_4"
      assert npi.taxonomy_switch_4 == "4"
      assert npi.other_identifier_state_20 == "20"
      assert npi.addr_practice_country == "ad"
      assert npi.other_identifier_type_30 == "30"
      assert npi.taxonomy_5 == "taxonomy"
      assert npi.other_identifier_state_18 == "18"
      assert npi.other_identifier_state_7 == "7"
      assert npi.parent_tin == "parenttin"
      assert npi.other_identifier_type_3 == "3"
      assert npi.other_identifier_state_34 == "34"
      assert npi.org_name == "org_name"
      assert npi.other_identifier_state_49 == "49"
      assert npi.other_identifier_state_29 == "29"
      assert npi.taxonomy_1 == "taxonomy"
      assert npi.sole_proprieter == "s"
      assert npi.other_identifier_38 == "other_identifier_38"
      assert npi.other_identifier_state_28 == "28"
      assert npi.addr_mail_postal == "addr_mail_postal"
      assert npi.license_state_13 == "13"
      assert npi.other_org_name_type == "o"
      assert npi.other_identifier_8 == "other_identifier_8"
      assert npi.other_last_name == "other_last_name"
      assert npi.other_identifier_type_31 == "31"
      assert npi.other_identifier_issuer_15 == "other_identifier_issuer_15"
      assert npi.other_identifier_type_4 == "4"
      assert npi.other_identifier_2 == "other_identifier_2"
      assert npi.other_identifier_13 == "other_identifier_13"
      assert npi.other_identifier_issuer_11 == "other_identifier_issuer_11"
      assert npi.last_name == "last_name"
      assert npi.other_identifier_29 == "other_identifier_29"
      assert npi.taxonomy_group_15 == "taxonomy_group_15"
      assert npi.license_num_13 == "license_num_13"
      assert npi.other_identifier_type_45 == "45"
      assert npi.other_identifier_12 == "other_identifier_12"
      assert npi.other_identifier_state_27 == "27"
      assert npi.other_identifier_issuer_5 == "other_identifier_issuer_5"
      assert npi.taxonomy_group_6 == "taxonomy_group_6"
      assert npi.other_identifier_issuer_13 == "other_identifier_issuer_13"
      assert npi.license_state_10 == "10"
      assert npi.taxonomy_switch_6 == "6"
      assert npi.taxonomy_14 == "taxonomy"
      assert npi.license_num_1 == "license_num_1"
      assert npi.other_identifier_type_33 == "33"
      assert npi.taxonomy_switch_9 == "9"
      assert npi.other_identifier_16 == "other_identifier_16"
      assert npi.gender == "g"
      assert npi.other_identifier_state_47 == "47"
      assert npi.other_identifier_state_6 == "6"
      assert npi.license_state_14 == "14"
      assert npi.other_first_name == "other_first_name"
      assert npi.other_identifier_issuer_44 == "other_identifier_issuer_44"
      assert npi.other_identifier_state_22 == "22"
      assert npi.other_identifier_state_42 == "42"
      assert npi.other_identifier_issuer_2 == "other_identifier_issuer_2"
      assert npi.other_identifier_type_35 == "35"
      assert npi.taxonomy_6 == "taxonomy"
      assert npi.other_identifier_issuer_14 == "other_identifier_issuer_14"
      assert npi.taxonomy_15 == "taxonomy"
      assert npi.license_state_9 == "9"
      assert npi.other_identifier_state_50 == "50"
      assert npi.other_identifier_22 == "other_identifier_22"
      assert npi.other_identifier_type_23 == "23"
      assert npi.other_identifier_28 == "other_identifier_28"
      assert npi.other_identifier_state_16 == "16"
      assert npi.ein == "ein"
      assert npi.other_identifier_state_24 == "24"
      assert npi.other_identifier_32 == "other_identifier_32"
      assert npi.other_identifier_type_29 == "29"
      assert npi.other_identifier_state_17 == "17"
      assert npi.other_identifier_state_39 == "39"
      assert npi.other_identifier_type_18 == "18"
      assert npi.other_identifier_type_39 == "39"
      assert npi.other_identifier_48 == "other_identifier_48"
      assert npi.addr_practice_postal == "addr_practice_postal"
      assert npi.taxonomy_switch_13 == "t"
      assert npi.name_suffix == "name"
      assert npi.other_identifier_5 == "other_identifier_5"
      assert npi.name_prefix == "name"
      assert npi.other_identifier_type_43 == "43"
      assert npi.other_identifier_issuer_18 == "other_identifier_issuer_18"
      assert npi.other_identifier_state_32 == "32"
      assert npi.other_identifier_type_2 == "2"
      assert npi.other_identifier_issuer_46 == "other_identifier_issuer_46"
      assert npi.taxonomy_4 == "taxonomy"
      assert npi.taxonomy_group_14 == "taxonomy_group_14"
      assert npi.addr_practice_second == "addr_practice_second"
      assert npi.other_identifier_issuer_30 == "other_identifier_issuer_30"
      assert npi.cert_date == ~D[2021-10-21]
      assert npi.other_identifier_41 == "other_identifier_41"
      assert npi.taxonomy_group_13 == "taxonomy_group_13"
      assert npi.other_identifier_type_15 == "15"
      assert npi.other_identifier_15 == "other_identifier_15"
      assert npi.addr_mail_second == "addr_mail_second"
      assert npi.other_identifier_issuer_28 == "other_identifier_issuer_28"
      assert npi.other_identifier_39 == "other_identifier_39"
      assert npi.other_identifier_state_37 == "37"
      assert npi.other_identifier_state_48 == "48"
      assert npi.reactivate_date == ~D[2021-10-21]
      assert npi.taxonomy_group_12 == "taxonomy_group_12"
      assert npi.deactivate_reason == "de"
      assert npi.other_identifier_30 == "other_identifier_30"
      assert npi.license_num_6 == "license_num_6"
      assert npi.other_identifier_type_16 == "16"
      assert npi.other_identifier_type_1 == "1"
      assert npi.other_identifier_issuer_41 == "other_identifier_issuer_41"
      assert npi.off_middle_name == "off_middle_name"
      assert npi.taxonomy_11 == "taxonomy"
      assert npi.other_identifier_issuer_47 == "other_identifier_issuer_47"
      assert npi.addr_mail_phone == "addr_mail_phone"
      assert npi.other_identifier_state_1 == "1"
      assert npi.other_identifier_issuer_16 == "other_identifier_issuer_16"
      assert npi.off_last_name == "off_last_name"
      assert npi.license_state_11 == "11"
      assert npi.other_identifier_type_6 == "6"
      assert npi.taxonomy_10 == "taxonomy"
      assert npi.other_identifier_type_38 == "38"
      assert npi.other_identifier_state_38 == "38"
      assert npi.other_identifier_10 == "other_identifier_10"
      assert npi.other_identifier_state_15 == "15"
      assert npi.other_identifier_issuer_50 == "other_identifier_issuer_50"
      assert npi.other_identifier_type_36 == "36"
      assert npi.addr_mail_state == "addr_mail_state"
      assert npi.license_state_5 == "5"
      assert npi.other_last_name_code == "other_last_name_code"
      assert npi.other_identifier_issuer_4 == "other_identifier_issuer_4"
      assert npi.other_identifier_43 == "other_identifier_43"
      assert npi.taxonomy_switch_12 == "t"
      assert npi.other_identifier_issuer_9 == "other_identifier_issuer_9"
      assert npi.other_identifier_issuer_24 == "other_identifier_issuer_24"
      assert npi.addr_mail_fax == "addr_mail_fax"
      assert npi.other_identifier_type_26 == "26"
      assert npi.license_num_11 == "license_num_11"
      assert npi.other_identifier_state_44 == "44"
      assert npi.other_identifier_4 == "other_identifier_4"
      assert npi.other_identifier_19 == "other_identifier_19"
      assert npi.license_state_8 == "8"
      assert npi.other_identifier_issuer_42 == "other_identifier_issuer_42"
      assert npi.other_identifier_type_32 == "32"
      assert npi.other_identifier_issuer_43 == "other_identifier_issuer_43"
      assert npi.other_identifier_9 == "other_identifier_9"
      assert npi.license_num_9 == "license_num_9"
      assert npi.other_identifier_type_42 == "42"
      assert npi.other_identifier_issuer_49 == "other_identifier_issuer_49"
      assert npi.other_identifier_state_45 == "45"
      assert npi.taxonomy_group_9 == "taxonomy_group_9"
      assert npi.other_identifier_35 == "other_identifier_35"
      assert npi.other_identifier_type_48 == "48"
      assert npi.middle_name == "middle_name"
      assert npi.taxonomy_8 == "taxonomy"
      assert npi.other_identifier_state_10 == "10"
      assert npi.addr_practice_city == "addr_practice_city"
      assert npi.taxonomy_3 == "taxonomy"
      assert npi.other_identifier_state_8 == "8"
      assert npi.taxonomy_group_10 == "taxonomy_group_10"
      assert npi.taxonomy_group_2 == "taxonomy_group_2"
    end

    test "update_npi/2 with invalid data returns error changeset" do
      npi = npi_fixture()
      assert {:error, %Ecto.Changeset{}} = Medical.update_npi(npi, @invalid_attrs)
      assert npi == Medical.get_npi!(npi.id)
    end

    test "delete_npi/1 deletes the npi" do
      npi = npi_fixture()
      assert {:ok, %Npi{}} = Medical.delete_npi(npi)
      assert_raise Ecto.NoResultsError, fn -> Medical.get_npi!(npi.id) end
    end

    test "change_npi/1 returns a npi changeset" do
      npi = npi_fixture()
      assert %Ecto.Changeset{} = Medical.change_npi(npi)
    end
  end

  describe "npi_taxonomy" do
    alias ProviderLookup.Medical.NpiTaxonomy

    import ProviderLookup.MedicalFixtures

    @invalid_attrs %{
      # tax_id: nil,
      license_num: nil,
      license_state: nil,
      taxonomy_classification: nil,
      taxonomy_group: nil,
      taxonomy_switch: nil,
      npi_id: nil,
      taxonomy_code: nil
    }

    test "list_npi_taxonomy/0 returns all npi_taxonomy" do
      npi_taxonomy = npi_taxonomy_fixture()
      assert Medical.list_npi_taxonomy() == [npi_taxonomy]
    end

    test "get_npi_taxonomy!/1 returns the npi_taxonomy with given id" do
      npi_taxonomy = npi_taxonomy_fixture()
      assert Medical.get_npi_taxonomy!(npi_taxonomy.tax_id) == npi_taxonomy
    end

    test "create_npi_taxonomy/1 with valid data creates a npi_taxonomy" do
      valid_attrs = %{
        license_num: "some license_num",
        license_state: "so",
        taxonomy_classification: "some taxonomy_classification",
        taxonomy_group: "some taxonomy_group",
        taxonomy_switch: "s"
      }

      assert {:ok, %NpiTaxonomy{} = npi_taxonomy} = Medical.create_npi_taxonomy(valid_attrs)
      assert npi_taxonomy.license_num == "some license_num"
      assert npi_taxonomy.license_state == "so"
      assert npi_taxonomy.taxonomy_classification == "some taxonomy_classification"
      assert npi_taxonomy.taxonomy_group == "some taxonomy_group"
      assert npi_taxonomy.taxonomy_switch == "s"
    end

    test "create_npi_taxonomy/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Medical.create_npi_taxonomy(@invalid_attrs)
    end

    test "update_npi_taxonomy/2 with valid data updates the npi_taxonomy" do
      npi_taxonomy = npi_taxonomy_fixture()

      update_attrs = %{
        license_num: "updated license_num",
        license_state: "so",
        taxonomy_classification: "some updated taxonomy_classification",
        taxonomy_group: "some updated taxonomy_group",
        taxonomy_switch: "s"
      }

      assert {:ok, %NpiTaxonomy{} = npi_taxonomy} =
               Medical.update_npi_taxonomy(npi_taxonomy, update_attrs)

      assert npi_taxonomy.license_num == "updated license_num"
      assert npi_taxonomy.license_state == "so"
      assert npi_taxonomy.taxonomy_classification == "some updated taxonomy_classification"
      assert npi_taxonomy.taxonomy_group == "some updated taxonomy_group"
      assert npi_taxonomy.taxonomy_switch == "s"
    end

    test "update_npi_taxonomy/2 with invalid data returns error changeset" do
      npi_taxonomy = npi_taxonomy_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Medical.update_npi_taxonomy(npi_taxonomy, @invalid_attrs)

      assert npi_taxonomy == Medical.get_npi_taxonomy!(npi_taxonomy.tax_id)
    end

    test "delete_npi_taxonomy/1 deletes the npi_taxonomy" do
      npi_taxonomy = npi_taxonomy_fixture()
      assert {:ok, %NpiTaxonomy{}} = Medical.delete_npi_taxonomy(npi_taxonomy)
      assert_raise Ecto.NoResultsError, fn -> Medical.get_npi_taxonomy!(npi_taxonomy.tax_id) end
    end

    test "change_npi_taxonomy/1 returns a npi_taxonomy changeset" do
      npi_taxonomy = npi_taxonomy_fixture()
      assert %Ecto.Changeset{} = Medical.change_npi_taxonomy(npi_taxonomy)
    end
  end

  describe "addresses" do
    alias ProviderLookup.Medical.Addresses

    import ProviderLookup.MedicalFixtures

    @invalid_attrs %{
      city: nil,
      country: nil,
      fax: nil,
      line_1: nil,
      line_2: nil,
      phone: nil,
      postal: nil,
      state: nil
    }

    test "list_addresses/0 returns all addresses" do
      addresses = addresses_fixture()
      assert Medical.list_addresses() == [addresses]
    end

    test "get_addresses!/1 returns the addresses with given id" do
      addresses = addresses_fixture()
      assert Medical.get_addresses!(addresses.id) == addresses
    end

    test "create_addresses/1 with valid data creates a addresses" do
      npi = npi_fixture()

      valid_attrs = %{
        city: "some city",
        country: "so",
        fax: "some fax",
        line_1: "some line_1",
        line_2: "some line_2",
        phone: "some phone",
        postal: "some postal",
        state: "some state",
        npi: npi.npi
      }

      assert {:ok, %Addresses{} = addresses} = Medical.create_addresses(valid_attrs)
      assert addresses.city == "some city"
      assert addresses.country == "so"
      assert addresses.fax == "some fax"
      assert addresses.line_1 == "some line_1"
      assert addresses.line_2 == "some line_2"
      assert addresses.phone == "some phone"
      assert addresses.postal == "some postal"
      assert addresses.state == "some state"
      assert addresses.npi == npi.npi
    end

    test "create_addresses/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Medical.create_addresses(@invalid_attrs)
    end

    test "update_addresses/2 with valid data updates the addresses" do
      addresses = addresses_fixture()

      update_attrs = %{
        city: "some updated city",
        country: "up",
        fax: "some updated fax",
        line_1: "some updated line_1",
        line_2: "some updated line_2",
        phone: "some updated phone",
        postal: "some updated postal",
        state: "some updated state"
      }

      assert {:ok, %Addresses{} = addresses} = Medical.update_addresses(addresses, update_attrs)
      assert addresses.city == "some updated city"
      assert addresses.country == "up"
      assert addresses.fax == "some updated fax"
      assert addresses.line_1 == "some updated line_1"
      assert addresses.line_2 == "some updated line_2"
      assert addresses.phone == "some updated phone"
      assert addresses.postal == "some updated postal"
      assert addresses.state == "some updated state"
    end

    test "update_addresses/2 with invalid data returns error changeset" do
      addresses = addresses_fixture()
      assert {:error, %Ecto.Changeset{}} = Medical.update_addresses(addresses, @invalid_attrs)
      assert addresses == Medical.get_addresses!(addresses.id)
    end

    test "delete_addresses/1 deletes the addresses" do
      addresses = addresses_fixture()
      assert {:ok, %Addresses{}} = Medical.delete_addresses(addresses)
      assert_raise Ecto.NoResultsError, fn -> Medical.get_addresses!(addresses.id) end
    end

    test "change_addresses/1 returns a addresses changeset" do
      addresses = addresses_fixture()
      assert %Ecto.Changeset{} = Medical.change_addresses(addresses)
    end
  end

  # describe "core_npi" do
  #   alias ProviderLookup.Medical.CoreNpi

  #   import ProviderLookup.MedicalFixtures

  #   @invalid_attrs %{
  #     addr_first: nil,
  #     addr_last: nil,
  #     city: nil,
  #     description: nil,
  #     first_name: nil,
  #     last_name: nil,
  #     phone: nil,
  #     state: nil,
  #     zip: nil
  #   }

  #   test "list_core_npi/0 returns all core_npi" do
  #     core_npi = core_npi_fixture()
  #     assert Medical.list_core_npi() == [core_npi]
  #   end

  #   test "get_core_npi!/1 returns the core_npi with given id" do
  #     core_npi = core_npi_fixture()
  #     assert Medical.get_core_npi!(core_npi.id) == core_npi
  #   end

  #   test "create_core_npi/1 with valid data creates a core_npi" do
  #     valid_attrs = %{
  #       addr_first: "some addr_first",
  #       addr_last: "some addr_last",
  #       city: "some city",
  #       description: "some description",
  #       first_name: "some first_name",
  #       last_name: "some last_name",
  #       phone: "some phone",
  #       state: "some state",
  #       zip: "some zip"
  #     }

  #     assert {:ok, %CoreNpi{} = core_npi} = Medical.create_core_npi(valid_attrs)
  #     assert core_npi.addr_first == "some addr_first"
  #     assert core_npi.addr_last == "some addr_last"
  #     assert core_npi.city == "some city"
  #     assert core_npi.description == "some description"
  #     assert core_npi.first_name == "some first_name"
  #     assert core_npi.last_name == "some last_name"
  #     assert core_npi.phone == "some phone"
  #     assert core_npi.state == "some state"
  #     assert core_npi.zip == "some zip"
  #   end

  #   test "create_core_npi/1 with invalid data returns error changeset" do
  #     assert {:error, %Ecto.Changeset{}} = Medical.create_core_npi(@invalid_attrs)
  #   end

  #   test "update_core_npi/2 with valid data updates the core_npi" do
  #     core_npi = core_npi_fixture()

  #     update_attrs = %{
  #       addr_first: "some updated addr_first",
  #       addr_last: "some updated addr_last",
  #       city: "some updated city",
  #       description: "some updated description",
  #       first_name: "some updated first_name",
  #       last_name: "some updated last_name",
  #       phone: "some updated phone",
  #       state: "some updated state",
  #       zip: "some updated zip"
  #     }

  #     assert {:ok, %CoreNpi{} = core_npi} = Medical.update_core_npi(core_npi, update_attrs)
  #     assert core_npi.addr_first == "some updated addr_first"
  #     assert core_npi.addr_last == "some updated addr_last"
  #     assert core_npi.city == "some updated city"
  #     assert core_npi.description == "some updated description"
  #     assert core_npi.first_name == "some updated first_name"
  #     assert core_npi.last_name == "some updated last_name"
  #     assert core_npi.phone == "some updated phone"
  #     assert core_npi.state == "some updated state"
  #     assert core_npi.zip == "some updated zip"
  #   end

  #   test "update_core_npi/2 with invalid data returns error changeset" do
  #     core_npi = core_npi_fixture()
  #     assert {:error, %Ecto.Changeset{}} = Medical.update_core_npi(core_npi, @invalid_attrs)
  #     assert core_npi == Medical.get_core_npi!(core_npi.id)
  #   end

  #   test "delete_core_npi/1 deletes the core_npi" do
  #     core_npi = core_npi_fixture()
  #     assert {:ok, %CoreNpi{}} = Medical.delete_core_npi(core_npi)
  #     assert_raise Ecto.NoResultsError, fn -> Medical.get_core_npi!(core_npi.id) end
  #   end

  #   test "change_core_npi/1 returns a core_npi changeset" do
  #     core_npi = core_npi_fixture()
  #     assert %Ecto.Changeset{} = Medical.change_core_npi(core_npi)
  #   end
  # end

  describe "raw_pl" do
    alias ProviderLookup.Medical.RawPl

    import ProviderLookup.MedicalFixtures

    @invalid_attrs %{
      country_code: nil,
      extension: nil,
      npi: nil,
      phone: nil,
      postal_code: nil,
      second_add_1: nil,
      second_add_2: nil,
      second_city: nil,
      second_state: nil
    }

    test "list_raw_pl/0 returns all raw_pl" do
      raw_pl = raw_pl_fixture()
      assert Medical.list_raw_pl() == [raw_pl]
    end

    # test "get_raw_pl!/1 returns the raw_pl with given id" do
    #   raw_pl = raw_pl_fixture()
    #   assert Medical.get_raw_pl!(raw_pl.id) == raw_pl
    # end

    test "create_raw_pl/1 with valid data creates a raw_pl" do
      valid_attrs = %{
        country_code: "some country_code",
        extension: "some extension",
        npi: 42,
        phone: "some phone",
        postal_code: "some postal_code",
        second_add_1: "some second_add_1",
        second_add_2: "some second_add_2",
        second_city: "some second_city",
        second_state: "some second_state"
      }

      assert {:ok, %RawPl{} = raw_pl} = Medical.create_raw_pl(valid_attrs)
      assert raw_pl.country_code == "some country_code"
      assert raw_pl.extension == "some extension"
      assert raw_pl.npi == 42
      assert raw_pl.phone == "some phone"
      assert raw_pl.postal_code == "some postal_code"
      assert raw_pl.second_add_1 == "some second_add_1"
      assert raw_pl.second_add_2 == "some second_add_2"
      assert raw_pl.second_city == "some second_city"
      assert raw_pl.second_state == "some second_state"
    end

    test "create_raw_pl/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Medical.create_raw_pl(@invalid_attrs)
    end

    # test "update_raw_pl/2 with valid data updates the raw_pl" do
    #   raw_pl = raw_pl_fixture()

    #   update_attrs = %{
    #     country_code: "some updated country_code",
    #     extension: "some updated extension",
    #     npi: 43,
    #     phone: "some updated phone",
    #     postal_code: "some updated postal_code",
    #     second_add_1: "some updated second_add_1",
    #     second_add_2: "some updated second_add_2",
    #     second_city: "some updated second_city",
    #     second_state: "some updated second_state"
    #   }
    #   assert {:ok, %RawPl{} = raw_pl} = Medical.update_raw_pl(raw_pl, update_attrs)
    #   assert raw_pl.country_code == "some updated country_code"
    #   assert raw_pl.extension == "some updated extension"
    #   assert raw_pl.npi == 43
    #   assert raw_pl.phone == "some updated phone"
    #   assert raw_pl.postal_code == "some updated postal_code"
    #   assert raw_pl.second_add_1 == "some updated second_add_1"
    #   assert raw_pl.second_add_2 == "some updated second_add_2"
    #   assert raw_pl.second_city == "some updated second_city"
    #   assert raw_pl.second_state == "some updated second_state"
    # end

    test "update_raw_pl/2 with invalid data returns error changeset" do
      raw_pl = raw_pl_fixture()
      assert {:error, %Ecto.Changeset{}} = Medical.update_raw_pl(raw_pl, @invalid_attrs)
      # assert raw_pl == Medical.get_raw_pl!(raw_pl.id)
    end

    # test "delete_raw_pl/1 deletes the raw_pl" do
    #   raw_pl = raw_pl_fixture()
    #   assert {:ok, %RawPl{}} = Medical.delete_raw_pl(raw_pl)
    #   assert_raise Ecto.NoResultsError, fn -> Medical.get_raw_pl!(raw_pl.id) end
    # end

    test "change_raw_pl/1 returns a raw_pl changeset" do
      raw_pl = raw_pl_fixture()
      assert %Ecto.Changeset{} = Medical.change_raw_pl(raw_pl)
    end
  end
end
