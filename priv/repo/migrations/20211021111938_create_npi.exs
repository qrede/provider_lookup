defmodule ProviderLookup.Repo.Migrations.CreateNpi do
  use Ecto.Migration

  def change do
    create table(:npi) do
      add :npi, :integer
      add :entity_type, :integer
      add :repl_npi, :integer
      add :ein, :string, size: 9
      add :org_name, :string, size: 70
      add :last_name, :string, size: 35
      add :first_name, :string, size: 20
      add :middle_name, :string, size: 20
      add :name_prefix, :string, size: 5
      add :name_suffix, :string, size: 5
      add :credentials, :string, size: 20
      add :other_org_name, :string, size: 70
      add :other_org_name_type, :string, size: 1
      add :other_last_name, :string, size: 35
      add :other_first_name, :string, size: 20
      add :other_middle_name, :string, size: 20
      add :other_name_prefix, :string, size: 5
      add :other_name_suffix, :string, size: 5
      add :other_credential, :string, size: 20
      add :other_last_name_code, :string
      add :addr_mail_first, :string, size: 55
      add :addr_mail_second, :string, size: 55
      add :addr_mail_city, :string, size: 40
      add :addr_mail_state, :string, size: 40
      add :addr_mail_postal, :string, size: 20
      add :addr_mail_country, :string, size: 2
      add :addr_mail_phone, :string, size: 20
      add :addr_mail_fax, :string, size: 20
      add :addr_practice_first, :string, size: 55
      add :addr_practice_second, :string, size: 55
      add :addr_practice_city, :string, size: 40
      add :addr_practice_state, :string, size: 40
      add :addr_practice_postal, :string, size: 20
      add :addr_practice_country, :string, size: 2
      add :addr_practice_phone, :string, size: 20
      add :addr_practice_fax, :string, size: 20
      add :enumeration_date, :date
      add :last_update, :date
      add :deactivate_reason, :string, size: 2
      add :deactivate_date, :date
      add :reactivate_date, :date
      add :gender, :string, size: 1
      add :off_last_name, :string, size: 35
      add :off_first_name, :string, size: 20
      add :off_middle_name, :string, size: 20
      add :off_title, :string, size: 35
      add :off_phone, :string, size: 20
      add :taxonomy_1, :string, size: 10
      add :license_num_1, :string, size: 20
      add :license_state_1, :string, size: 2
      add :taxonomy_switch_1, :string, size: 1
      add :taxonomy_2, :string, size: 10
      add :license_num_2, :string, size: 20
      add :license_state_2, :string, size: 2
      add :taxonomy_switch_2, :string, size: 1
      add :taxonomy_3, :string, size: 10
      add :license_num_3, :string, size: 20
      add :license_state_3, :string, size: 2
      add :taxonomy_switch_3, :string, size: 1
      add :taxonomy_4, :string, size: 10
      add :license_num_4, :string, size: 20
      add :license_state_4, :string, size: 2
      add :taxonomy_switch_4, :string, size: 1
      add :taxonomy_5, :string, size: 10
      add :license_num_5, :string, size: 20
      add :license_state_5, :string, size: 2
      add :taxonomy_switch_5, :string, size: 1
      add :taxonomy_6, :string, size: 10
      add :license_num_6, :string, size: 20
      add :license_state_6, :string, size: 2
      add :taxonomy_switch_6, :string, size: 1
      add :taxonomy_7, :string, size: 10
      add :license_num_7, :string, size: 20
      add :license_state_7, :string, size: 2
      add :taxonomy_switch_7, :string, size: 1
      add :taxonomy_8, :string, size: 10
      add :license_num_8, :string, size: 20
      add :license_state_8, :string, size: 2
      add :taxonomy_switch_8, :string, size: 1
      add :taxonomy_9, :string, size: 10
      add :license_num_9, :string, size: 20
      add :license_state_9, :string, size: 2
      add :taxonomy_switch_9, :string, size: 1
      add :taxonomy_10, :string, size: 10
      add :license_num_10, :string, size: 20
      add :license_state_10, :string, size: 2
      add :taxonomy_switch_10, :string, size: 1
      add :taxonomy_11, :string, size: 10
      add :license_num_11, :string, size: 20
      add :license_state_11, :string, size: 2
      add :taxonomy_switch_11, :string, size: 1
      add :taxonomy_12, :string, size: 10
      add :license_num_12, :string, size: 20
      add :license_state_12, :string, size: 2
      add :taxonomy_switch_12, :string, size: 1
      add :taxonomy_13, :string, size: 10
      add :license_num_13, :string, size: 20
      add :license_state_13, :string, size: 2
      add :taxonomy_switch_13, :string, size: 1
      add :taxonomy_14, :string, size: 10
      add :license_num_14, :string, size: 20
      add :license_state_14, :string, size: 2
      add :taxonomy_switch_14, :string, size: 1
      add :taxonomy_15, :string, size: 10
      add :license_num_15, :string, size: 20
      add :license_state_15, :string, size: 2
      add :taxonomy_switch_15, :string, size: 1
      add :other_identifier_1, :string, size: 20
      add :other_identifier_type_1, :string, size: 2
      add :other_identifier_state_1, :string, size: 2
      add :other_identifier_issuer_1, :string, size: 80
      add :other_identifier_2, :string, size: 20
      add :other_identifier_type_2, :string, size: 2
      add :other_identifier_state_2, :string, size: 2
      add :other_identifier_issuer_2, :string, size: 80
      add :other_identifier_3, :string, size: 20
      add :other_identifier_type_3, :string, size: 2
      add :other_identifier_state_3, :string, size: 2
      add :other_identifier_issuer_3, :string, size: 80
      add :other_identifier_4, :string, size: 20
      add :other_identifier_type_4, :string, size: 2
      add :other_identifier_state_4, :string, size: 2
      add :other_identifier_issuer_4, :string, size: 80
      add :other_identifier_5, :string, size: 20
      add :other_identifier_type_5, :string, size: 2
      add :other_identifier_state_5, :string, size: 2
      add :other_identifier_issuer_5, :string, size: 80
      add :other_identifier_6, :string, size: 20
      add :other_identifier_type_6, :string, size: 2
      add :other_identifier_state_6, :string, size: 2
      add :other_identifier_issuer_6, :string, size: 80
      add :other_identifier_7, :string, size: 20
      add :other_identifier_type_7, :string, size: 2
      add :other_identifier_state_7, :string, size: 2
      add :other_identifier_issuer_7, :string, size: 80
      add :other_identifier_8, :string, size: 20
      add :other_identifier_type_8, :string, size: 2
      add :other_identifier_state_8, :string, size: 2
      add :other_identifier_issuer_8, :string, size: 80
      add :other_identifier_9, :string, size: 20
      add :other_identifier_type_9, :string, size: 2
      add :other_identifier_state_9, :string, size: 2
      add :other_identifier_issuer_9, :string, size: 80
      add :other_identifier_10, :string, size: 20
      add :other_identifier_type_10, :string, size: 2
      add :other_identifier_state_10, :string, size: 2
      add :other_identifier_issuer_10, :string, size: 80
      add :other_identifier_11, :string, size: 20
      add :other_identifier_type_11, :string, size: 2
      add :other_identifier_state_11, :string, size: 2
      add :other_identifier_issuer_11, :string, size: 80
      add :other_identifier_12, :string, size: 20
      add :other_identifier_type_12, :string, size: 2
      add :other_identifier_state_12, :string, size: 2
      add :other_identifier_issuer_12, :string, size: 80
      add :other_identifier_13, :string, size: 20
      add :other_identifier_type_13, :string, size: 2
      add :other_identifier_state_13, :string, size: 2
      add :other_identifier_issuer_13, :string, size: 80
      add :other_identifier_14, :string, size: 20
      add :other_identifier_type_14, :string, size: 2
      add :other_identifier_state_14, :string, size: 2
      add :other_identifier_issuer_14, :string, size: 80
      add :other_identifier_15, :string, size: 20
      add :other_identifier_type_15, :string, size: 2
      add :other_identifier_state_15, :string, size: 2
      add :other_identifier_issuer_15, :string, size: 80
      add :other_identifier_16, :string, size: 20
      add :other_identifier_type_16, :string, size: 2
      add :other_identifier_state_16, :string, size: 2
      add :other_identifier_issuer_16, :string, size: 80
      add :other_identifier_17, :string, size: 20
      add :other_identifier_type_17, :string, size: 2
      add :other_identifier_state_17, :string, size: 2
      add :other_identifier_issuer_17, :string, size: 80
      add :other_identifier_18, :string, size: 20
      add :other_identifier_type_18, :string, size: 2
      add :other_identifier_state_18, :string, size: 2
      add :other_identifier_issuer_18, :string, size: 80
      add :other_identifier_19, :string, size: 20
      add :other_identifier_type_19, :string, size: 2
      add :other_identifier_state_19, :string, size: 2
      add :other_identifier_issuer_19, :string, size: 80
      add :other_identifier_20, :string, size: 20
      add :other_identifier_type_20, :string, size: 2
      add :other_identifier_state_20, :string, size: 2
      add :other_identifier_issuer_20, :string, size: 80
      add :other_identifier_21, :string, size: 20
      add :other_identifier_type_21, :string, size: 2
      add :other_identifier_state_21, :string, size: 2
      add :other_identifier_issuer_21, :string, size: 80
      add :other_identifier_22, :string, size: 20
      add :other_identifier_type_22, :string, size: 2
      add :other_identifier_state_22, :string, size: 2
      add :other_identifier_issuer_22, :string, size: 80
      add :other_identifier_23, :string, size: 20
      add :other_identifier_type_23, :string, size: 2
      add :other_identifier_state_23, :string, size: 2
      add :other_identifier_issuer_23, :string, size: 80
      add :other_identifier_24, :string, size: 20
      add :other_identifier_type_24, :string, size: 2
      add :other_identifier_state_24, :string, size: 2
      add :other_identifier_issuer_24, :string, size: 80
      add :other_identifier_25, :string, size: 20
      add :other_identifier_type_25, :string, size: 2
      add :other_identifier_state_25, :string, size: 2
      add :other_identifier_issuer_25, :string, size: 80
      add :other_identifier_26, :string, size: 20
      add :other_identifier_type_26, :string, size: 2
      add :other_identifier_state_26, :string, size: 2
      add :other_identifier_issuer_26, :string, size: 80
      add :other_identifier_27, :string, size: 20
      add :other_identifier_type_27, :string, size: 2
      add :other_identifier_state_27, :string, size: 2
      add :other_identifier_issuer_27, :string, size: 80
      add :other_identifier_28, :string, size: 20
      add :other_identifier_type_28, :string, size: 2
      add :other_identifier_state_28, :string, size: 2
      add :other_identifier_issuer_28, :string, size: 80
      add :other_identifier_29, :string, size: 20
      add :other_identifier_type_29, :string, size: 2
      add :other_identifier_state_29, :string, size: 2
      add :other_identifier_issuer_29, :string, size: 80
      add :other_identifier_30, :string, size: 20
      add :other_identifier_type_30, :string, size: 2
      add :other_identifier_state_30, :string, size: 2
      add :other_identifier_issuer_30, :string, size: 80
      add :other_identifier_31, :string, size: 20
      add :other_identifier_type_31, :string, size: 2
      add :other_identifier_state_31, :string, size: 2
      add :other_identifier_issuer_31, :string, size: 80
      add :other_identifier_32, :string, size: 20
      add :other_identifier_type_32, :string, size: 2
      add :other_identifier_state_32, :string, size: 2
      add :other_identifier_issuer_32, :string, size: 80
      add :other_identifier_33, :string, size: 20
      add :other_identifier_type_33, :string, size: 2
      add :other_identifier_state_33, :string, size: 2
      add :other_identifier_issuer_33, :string, size: 80
      add :other_identifier_34, :string, size: 20
      add :other_identifier_type_34, :string, size: 2
      add :other_identifier_state_34, :string, size: 2
      add :other_identifier_issuer_34, :string, size: 80
      add :other_identifier_35, :string, size: 20
      add :other_identifier_type_35, :string, size: 2
      add :other_identifier_state_35, :string, size: 2
      add :other_identifier_issuer_35, :string, size: 80
      add :other_identifier_36, :string, size: 20
      add :other_identifier_type_36, :string, size: 2
      add :other_identifier_state_36, :string, size: 2
      add :other_identifier_issuer_36, :string, size: 80
      add :other_identifier_37, :string, size: 20
      add :other_identifier_type_37, :string, size: 2
      add :other_identifier_state_37, :string, size: 2
      add :other_identifier_issuer_37, :string, size: 80
      add :other_identifier_38, :string, size: 20
      add :other_identifier_type_38, :string, size: 2
      add :other_identifier_state_38, :string, size: 2
      add :other_identifier_issuer_38, :string, size: 80
      add :other_identifier_39, :string, size: 20
      add :other_identifier_type_39, :string, size: 2
      add :other_identifier_state_39, :string, size: 2
      add :other_identifier_issuer_39, :string, size: 80
      add :other_identifier_40, :string, size: 20
      add :other_identifier_type_40, :string, size: 2
      add :other_identifier_state_40, :string, size: 2
      add :other_identifier_issuer_40, :string, size: 80
      add :other_identifier_41, :string, size: 20
      add :other_identifier_type_41, :string, size: 2
      add :other_identifier_state_41, :string, size: 2
      add :other_identifier_issuer_41, :string, size: 80
      add :other_identifier_42, :string, size: 20
      add :other_identifier_type_42, :string, size: 2
      add :other_identifier_state_42, :string, size: 2
      add :other_identifier_issuer_42, :string, size: 80
      add :other_identifier_43, :string, size: 20
      add :other_identifier_type_43, :string, size: 2
      add :other_identifier_state_43, :string, size: 2
      add :other_identifier_issuer_43, :string, size: 80
      add :other_identifier_44, :string, size: 20
      add :other_identifier_type_44, :string, size: 2
      add :other_identifier_state_44, :string, size: 2
      add :other_identifier_issuer_44, :string, size: 80
      add :other_identifier_45, :string, size: 20
      add :other_identifier_type_45, :string, size: 2
      add :other_identifier_state_45, :string, size: 2
      add :other_identifier_issuer_45, :string, size: 80
      add :other_identifier_46, :string, size: 20
      add :other_identifier_type_46, :string, size: 2
      add :other_identifier_state_46, :string, size: 2
      add :other_identifier_issuer_46, :string, size: 80
      add :other_identifier_47, :string, size: 20
      add :other_identifier_type_47, :string, size: 2
      add :other_identifier_state_47, :string, size: 2
      add :other_identifier_issuer_47, :string, size: 80
      add :other_identifier_48, :string, size: 20
      add :other_identifier_type_48, :string, size: 2
      add :other_identifier_state_48, :string, size: 2
      add :other_identifier_issuer_48, :string, size: 80
      add :other_identifier_49, :string, size: 20
      add :other_identifier_type_49, :string, size: 2
      add :other_identifier_state_49, :string, size: 2
      add :other_identifier_issuer_49, :string, size: 80
      add :other_identifier_50, :string, size: 20
      add :other_identifier_type_50, :string, size: 2
      add :other_identifier_state_50, :string, size: 2
      add :other_identifier_issuer_50, :string, size: 80
      add :sole_proprieter, :string, size: 1
      add :org_subpart, :string, size: 1
      add :parent_lbn, :string, size: 70
      add :parent_tin, :string, size: 9
      add :off_name_prefix, :string, size: 5
      add :off_name_suffix, :string, size: 5
      add :off_credentials, :string, size: 20
      add :taxonomy_group_1, :string
      add :taxonomy_group_2, :string
      add :taxonomy_group_3, :string
      add :taxonomy_group_4, :string
      add :taxonomy_group_5, :string
      add :taxonomy_group_6, :string
      add :taxonomy_group_7, :string
      add :taxonomy_group_8, :string
      add :taxonomy_group_9, :string
      add :taxonomy_group_10, :string
      add :taxonomy_group_11, :string
      add :taxonomy_group_12, :string
      add :taxonomy_group_13, :string
      add :taxonomy_group_14, :string
      add :taxonomy_group_15, :string
      add :cert_date, :date
    end

    create unique_index(:npi, [:npi])
    create index(:npi, [:last_name], name: :lname)
    create index(:npi, [:addr_practice_city, :addr_practice_state], name: :citystate)
    create index(:npi, [:last_name, :first_name], name: :fullname)
  end
end
