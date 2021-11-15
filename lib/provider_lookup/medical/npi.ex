defmodule ProviderLookup.Medical.Npi do
  use Ecto.Schema
  import Ecto.Changeset
  alias ProviderLookup.Medical.NpiTaxonomy

  schema "npi" do
    field :other_identifier_21, :string
    field :repl_npi, :integer
    field :off_first_name, :string
    field :other_identifier_type_22, :string
    field :other_identifier_type_41, :string
    field :other_identifier_1, :string
    field :taxonomy_switch_15, :string
    field :other_identifier_issuer_20, :string
    field :other_identifier_issuer_27, :string
    field :other_identifier_state_43, :string
    field :other_identifier_issuer_36, :string
    field :other_identifier_type_13, :string
    field :other_identifier_state_14, :string
    field :other_name_suffix, :string
    field :license_num_12, :string
    field :other_identifier_type_47, :string
    field :other_identifier_44, :string
    field :npi, :integer
    field :taxonomy_group_5, :string
    field :other_identifier_6, :string
    field :off_title, :string
    field :other_identifier_state_19, :string
    field :enumeration_date, :date
    field :other_identifier_47, :string
    field :license_num_3, :string
    field :other_identifier_type_46, :string
    field :off_phone, :string
    field :license_state_15, :string
    field :other_identifier_type_44, :string
    field :license_state_4, :string
    field :other_identifier_issuer_40, :string
    field :other_identifier_issuer_34, :string
    field :other_identifier_state_4, :string
    field :other_identifier_14, :string
    field :deactivate_date, :date
    field :other_identifier_state_2, :string
    field :other_identifier_45, :string
    field :other_identifier_state_5, :string
    field :other_identifier_issuer_29, :string
    field :taxonomy_group_11, :string
    field :taxonomy_switch_5, :string
    field :other_identifier_issuer_23, :string
    field :other_identifier_type_27, :string
    field :other_identifier_state_36, :string
    field :other_identifier_type_20, :string
    field :taxonomy_group_8, :string
    field :other_credential, :string
    field :other_identifier_37, :string
    field :other_identifier_state_26, :string
    field :other_identifier_type_12, :string
    field :taxonomy_group_1, :string
    field :other_identifier_34, :string
    field :other_identifier_issuer_10, :string
    field :taxonomy_switch_7, :string
    field :other_identifier_27, :string
    field :taxonomy_switch_8, :string
    field :other_identifier_issuer_8, :string
    field :other_identifier_issuer_12, :string
    field :other_identifier_state_46, :string
    field :other_identifier_25, :string
    field :other_identifier_issuer_19, :string
    field :other_identifier_type_10, :string
    field :other_identifier_issuer_26, :string
    field :license_num_7, :string
    field :taxonomy_2, :string
    field :addr_practice_state, :string
    field :license_num_15, :string
    field :license_num_8, :string
    field :other_identifier_issuer_35, :string
    field :other_identifier_23, :string
    field :other_identifier_type_19, :string
    field :license_num_10, :string
    field :other_identifier_issuer_33, :string
    field :taxonomy_switch_10, :string
    field :other_identifier_state_23, :string
    field :off_credentials, :string
    field :other_middle_name, :string
    field :other_identifier_state_13, :string
    field :taxonomy_7, :string
    field :last_update, :date
    field :taxonomy_switch_14, :string
    field :other_identifier_issuer_7, :string
    field :other_identifier_11, :string
    field :addr_practice_phone, :string
    field :taxonomy_9, :string
    field :other_identifier_type_21, :string
    field :off_name_prefix, :string
    field :other_identifier_type_17, :string
    field :license_num_2, :string
    field :credentials, :string
    field :other_identifier_issuer_3, :string
    field :other_identifier_issuer_39, :string
    field :parent_lbn, :string
    field :license_num_14, :string
    field :other_identifier_state_33, :string
    field :other_identifier_issuer_38, :string
    field :other_identifier_state_31, :string
    field :taxonomy_switch_11, :string
    field :license_state_1, :string
    field :other_identifier_type_14, :string
    field :entity_type, :integer
    field :other_identifier_20, :string
    field :other_identifier_issuer_25, :string
    field :other_identifier_state_41, :string
    field :other_identifier_issuer_31, :string
    field :other_name_prefix, :string
    field :other_identifier_state_3, :string
    field :other_identifier_50, :string
    field :other_identifier_issuer_48, :string
    field :license_state_7, :string
    field :taxonomy_12, :string
    field :other_identifier_17, :string
    field :license_num_5, :string
    field :other_identifier_24, :string
    field :org_subpart, :string
    field :taxonomy_group_3, :string
    field :taxonomy_switch_3, :string
    field :addr_mail_country, :string
    field :other_identifier_issuer_32, :string
    field :license_state_6, :string
    field :license_num_4, :string
    field :other_identifier_type_11, :string
    field :addr_mail_first, :string
    field :other_identifier_type_50, :string
    field :addr_practice_first, :string
    field :other_identifier_type_34, :string
    field :other_identifier_31, :string
    field :other_identifier_state_12, :string
    field :other_identifier_type_9, :string
    field :other_identifier_issuer_45, :string
    field :other_identifier_state_11, :string
    field :other_identifier_40, :string
    field :taxonomy_switch_2, :string
    field :other_identifier_type_28, :string
    field :taxonomy_group_7, :string
    field :other_identifier_state_35, :string
    field :license_state_3, :string
    field :other_identifier_state_40, :string
    field :other_identifier_issuer_21, :string
    field :other_identifier_3, :string
    field :other_identifier_issuer_37, :string
    field :other_identifier_type_49, :string
    field :other_identifier_type_40, :string
    field :other_org_name, :string
    field :other_identifier_42, :string
    field :other_identifier_issuer_1, :string
    field :other_identifier_46, :string
    field :addr_mail_city, :string
    field :other_identifier_issuer_17, :string
    field :other_identifier_49, :string
    field :other_identifier_state_9, :string
    field :other_identifier_type_37, :string
    field :other_identifier_36, :string
    field :taxonomy_13, :string
    field :license_state_2, :string
    field :other_identifier_issuer_22, :string
    field :other_identifier_state_30, :string
    field :off_name_suffix, :string
    field :addr_practice_fax, :string
    field :other_identifier_26, :string
    field :other_identifier_type_8, :string
    field :other_identifier_7, :string
    field :other_identifier_type_5, :string
    field :other_identifier_18, :string
    field :other_identifier_33, :string
    field :other_identifier_type_24, :string
    field :other_identifier_type_7, :string
    field :other_identifier_issuer_6, :string
    field :other_identifier_type_25, :string
    field :first_name, :string
    field :taxonomy_switch_1, :string
    field :other_identifier_state_21, :string
    field :license_state_12, :string
    field :other_identifier_state_25, :string
    field :taxonomy_group_4, :string
    field :taxonomy_switch_4, :string
    field :other_identifier_state_20, :string
    field :addr_practice_country, :string
    field :other_identifier_type_30, :string
    field :taxonomy_5, :string
    field :other_identifier_state_18, :string
    field :other_identifier_state_7, :string
    field :parent_tin, :string
    field :other_identifier_type_3, :string
    field :other_identifier_state_34, :string
    field :org_name, :string
    field :other_identifier_state_49, :string
    field :other_identifier_state_29, :string
    field :taxonomy_1, :string
    field :sole_proprieter, :string
    field :other_identifier_38, :string
    field :other_identifier_state_28, :string
    field :addr_mail_postal, :string
    field :license_state_13, :string
    field :other_org_name_type, :string
    field :other_identifier_8, :string
    field :other_last_name, :string
    field :other_identifier_type_31, :string
    field :other_identifier_issuer_15, :string
    field :other_identifier_type_4, :string
    field :other_identifier_2, :string
    field :other_identifier_13, :string
    field :other_identifier_issuer_11, :string
    field :last_name, :string
    field :other_identifier_29, :string
    field :taxonomy_group_15, :string
    field :license_num_13, :string
    field :other_identifier_type_45, :string
    field :other_identifier_12, :string
    field :other_identifier_state_27, :string
    field :other_identifier_issuer_5, :string
    field :taxonomy_group_6, :string
    field :other_identifier_issuer_13, :string
    field :license_state_10, :string
    field :taxonomy_switch_6, :string
    field :taxonomy_14, :string
    field :license_num_1, :string
    field :other_identifier_type_33, :string
    field :taxonomy_switch_9, :string
    field :other_identifier_16, :string
    field :gender, :string
    field :other_identifier_state_47, :string
    field :other_identifier_state_6, :string
    field :license_state_14, :string
    field :other_first_name, :string
    field :other_identifier_issuer_44, :string
    field :other_identifier_state_22, :string
    field :other_identifier_state_42, :string
    field :other_identifier_issuer_2, :string
    field :other_identifier_type_35, :string
    field :taxonomy_6, :string
    field :other_identifier_issuer_14, :string
    field :taxonomy_15, :string
    field :license_state_9, :string
    field :other_identifier_state_50, :string
    field :other_identifier_22, :string
    field :other_identifier_type_23, :string
    field :other_identifier_28, :string
    field :other_identifier_state_16, :string
    field :ein, :string
    field :other_identifier_state_24, :string
    field :other_identifier_32, :string
    field :other_identifier_type_29, :string
    field :other_identifier_state_17, :string
    field :other_identifier_state_39, :string
    field :other_identifier_type_18, :string
    field :other_identifier_type_39, :string
    field :other_identifier_48, :string
    field :addr_practice_postal, :string
    field :taxonomy_switch_13, :string
    field :name_suffix, :string
    field :other_identifier_5, :string
    field :name_prefix, :string
    field :other_identifier_type_43, :string
    field :other_identifier_issuer_18, :string
    field :other_identifier_state_32, :string
    field :other_identifier_type_2, :string
    field :other_identifier_issuer_46, :string
    field :taxonomy_4, :string
    field :taxonomy_group_14, :string
    field :addr_practice_second, :string
    field :other_identifier_issuer_30, :string
    field :cert_date, :date
    field :other_identifier_41, :string
    field :taxonomy_group_13, :string
    field :other_identifier_type_15, :string
    field :other_identifier_15, :string
    field :addr_mail_second, :string
    field :other_identifier_issuer_28, :string
    field :other_identifier_39, :string
    field :other_identifier_state_37, :string
    field :other_identifier_state_48, :string
    field :reactivate_date, :date
    field :taxonomy_group_12, :string
    field :deactivate_reason, :string
    field :other_identifier_30, :string
    field :license_num_6, :string
    field :other_identifier_type_16, :string
    field :other_identifier_type_1, :string
    field :other_identifier_issuer_41, :string
    field :off_middle_name, :string
    field :taxonomy_11, :string
    field :other_identifier_issuer_47, :string
    field :addr_mail_phone, :string
    field :other_identifier_state_1, :string
    field :other_identifier_issuer_16, :string
    field :off_last_name, :string
    field :license_state_11, :string
    field :other_identifier_type_6, :string
    field :taxonomy_10, :string
    field :other_identifier_type_38, :string
    field :other_identifier_state_38, :string
    field :other_identifier_10, :string
    field :other_identifier_state_15, :string
    field :other_identifier_issuer_50, :string
    field :other_identifier_type_36, :string
    field :addr_mail_state, :string
    field :license_state_5, :string
    field :other_last_name_code, :string
    field :other_identifier_issuer_4, :string
    field :other_identifier_43, :string
    field :taxonomy_switch_12, :string
    field :other_identifier_issuer_9, :string
    field :other_identifier_issuer_24, :string
    field :addr_mail_fax, :string
    field :other_identifier_type_26, :string
    field :license_num_11, :string
    field :other_identifier_state_44, :string
    field :other_identifier_4, :string
    field :other_identifier_19, :string
    field :license_state_8, :string
    field :other_identifier_issuer_42, :string
    field :other_identifier_type_32, :string
    field :other_identifier_issuer_43, :string
    field :other_identifier_9, :string
    field :license_num_9, :string
    field :other_identifier_type_42, :string
    field :other_identifier_issuer_49, :string
    field :other_identifier_state_45, :string
    field :taxonomy_group_9, :string
    field :other_identifier_35, :string
    field :other_identifier_type_48, :string
    field :middle_name, :string
    field :taxonomy_8, :string
    field :other_identifier_state_10, :string
    field :addr_practice_city, :string
    field :taxonomy_3, :string
    field :other_identifier_state_8, :string
    field :taxonomy_group_10, :string
    field :taxonomy_group_2, :string
    has_many :npi_main, NpiTaxonomy, foreign_key: :npi
  end

  @doc false
  def changeset(npi, attrs) do
    npi
    |> cast(attrs, [
      :npi,
      :entity_type,
      :repl_npi,
      :ein,
      :org_name,
      :last_name,
      :first_name,
      :middle_name,
      :name_prefix,
      :name_suffix,
      :credentials,
      :other_org_name,
      :other_org_name_type,
      :other_last_name,
      :other_first_name,
      :other_middle_name,
      :other_name_prefix,
      :other_name_suffix,
      :other_credential,
      :other_last_name_code,
      :addr_mail_first,
      :addr_mail_second,
      :addr_mail_city,
      :addr_mail_state,
      :addr_mail_postal,
      :addr_mail_country,
      :addr_mail_phone,
      :addr_mail_fax,
      :addr_practice_first,
      :addr_practice_second,
      :addr_practice_city,
      :addr_practice_state,
      :addr_practice_postal,
      :addr_practice_country,
      :addr_practice_phone,
      :addr_practice_fax,
      :enumeration_date,
      :last_update,
      :deactivate_reason,
      :deactivate_date,
      :reactivate_date,
      :gender,
      :off_last_name,
      :off_first_name,
      :off_middle_name,
      :off_title,
      :off_phone,
      :taxonomy_1,
      :license_num_1,
      :license_state_1,
      :taxonomy_switch_1,
      :taxonomy_2,
      :license_num_2,
      :license_state_2,
      :taxonomy_switch_2,
      :taxonomy_3,
      :license_num_3,
      :license_state_3,
      :taxonomy_switch_3,
      :taxonomy_4,
      :license_num_4,
      :license_state_4,
      :taxonomy_switch_4,
      :taxonomy_5,
      :license_num_5,
      :license_state_5,
      :taxonomy_switch_5,
      :taxonomy_6,
      :license_num_6,
      :license_state_6,
      :taxonomy_switch_6,
      :taxonomy_7,
      :license_num_7,
      :license_state_7,
      :taxonomy_switch_7,
      :taxonomy_8,
      :license_num_8,
      :license_state_8,
      :taxonomy_switch_8,
      :taxonomy_9,
      :license_num_9,
      :license_state_9,
      :taxonomy_switch_9,
      :taxonomy_10,
      :license_num_10,
      :license_state_10,
      :taxonomy_switch_10,
      :taxonomy_11,
      :license_num_11,
      :license_state_11,
      :taxonomy_switch_11,
      :taxonomy_12,
      :license_num_12,
      :license_state_12,
      :taxonomy_switch_12,
      :taxonomy_13,
      :license_num_13,
      :license_state_13,
      :taxonomy_switch_13,
      :taxonomy_14,
      :license_num_14,
      :license_state_14,
      :taxonomy_switch_14,
      :taxonomy_15,
      :license_num_15,
      :license_state_15,
      :taxonomy_switch_15,
      :other_identifier_1,
      :other_identifier_type_1,
      :other_identifier_state_1,
      :other_identifier_issuer_1,
      :other_identifier_2,
      :other_identifier_type_2,
      :other_identifier_state_2,
      :other_identifier_issuer_2,
      :other_identifier_3,
      :other_identifier_type_3,
      :other_identifier_state_3,
      :other_identifier_issuer_3,
      :other_identifier_4,
      :other_identifier_type_4,
      :other_identifier_state_4,
      :other_identifier_issuer_4,
      :other_identifier_5,
      :other_identifier_type_5,
      :other_identifier_state_5,
      :other_identifier_issuer_5,
      :other_identifier_6,
      :other_identifier_type_6,
      :other_identifier_state_6,
      :other_identifier_issuer_6,
      :other_identifier_7,
      :other_identifier_type_7,
      :other_identifier_state_7,
      :other_identifier_issuer_7,
      :other_identifier_8,
      :other_identifier_type_8,
      :other_identifier_state_8,
      :other_identifier_issuer_8,
      :other_identifier_9,
      :other_identifier_type_9,
      :other_identifier_state_9,
      :other_identifier_issuer_9,
      :other_identifier_10,
      :other_identifier_type_10,
      :other_identifier_state_10,
      :other_identifier_issuer_10,
      :other_identifier_11,
      :other_identifier_type_11,
      :other_identifier_state_11,
      :other_identifier_issuer_11,
      :other_identifier_12,
      :other_identifier_type_12,
      :other_identifier_state_12,
      :other_identifier_issuer_12,
      :other_identifier_13,
      :other_identifier_type_13,
      :other_identifier_state_13,
      :other_identifier_issuer_13,
      :other_identifier_14,
      :other_identifier_type_14,
      :other_identifier_state_14,
      :other_identifier_issuer_14,
      :other_identifier_15,
      :other_identifier_type_15,
      :other_identifier_state_15,
      :other_identifier_issuer_15,
      :other_identifier_16,
      :other_identifier_type_16,
      :other_identifier_state_16,
      :other_identifier_issuer_16,
      :other_identifier_17,
      :other_identifier_type_17,
      :other_identifier_state_17,
      :other_identifier_issuer_17,
      :other_identifier_18,
      :other_identifier_type_18,
      :other_identifier_state_18,
      :other_identifier_issuer_18,
      :other_identifier_19,
      :other_identifier_type_19,
      :other_identifier_state_19,
      :other_identifier_issuer_19,
      :other_identifier_20,
      :other_identifier_type_20,
      :other_identifier_state_20,
      :other_identifier_issuer_20,
      :other_identifier_21,
      :other_identifier_type_21,
      :other_identifier_state_21,
      :other_identifier_issuer_21,
      :other_identifier_22,
      :other_identifier_type_22,
      :other_identifier_state_22,
      :other_identifier_issuer_22,
      :other_identifier_23,
      :other_identifier_type_23,
      :other_identifier_state_23,
      :other_identifier_issuer_23,
      :other_identifier_24,
      :other_identifier_type_24,
      :other_identifier_state_24,
      :other_identifier_issuer_24,
      :other_identifier_25,
      :other_identifier_type_25,
      :other_identifier_state_25,
      :other_identifier_issuer_25,
      :other_identifier_26,
      :other_identifier_type_26,
      :other_identifier_state_26,
      :other_identifier_issuer_26,
      :other_identifier_27,
      :other_identifier_type_27,
      :other_identifier_state_27,
      :other_identifier_issuer_27,
      :other_identifier_28,
      :other_identifier_type_28,
      :other_identifier_state_28,
      :other_identifier_issuer_28,
      :other_identifier_29,
      :other_identifier_type_29,
      :other_identifier_state_29,
      :other_identifier_issuer_29,
      :other_identifier_30,
      :other_identifier_type_30,
      :other_identifier_state_30,
      :other_identifier_issuer_30,
      :other_identifier_31,
      :other_identifier_type_31,
      :other_identifier_state_31,
      :other_identifier_issuer_31,
      :other_identifier_32,
      :other_identifier_type_32,
      :other_identifier_state_32,
      :other_identifier_issuer_32,
      :other_identifier_33,
      :other_identifier_type_33,
      :other_identifier_state_33,
      :other_identifier_issuer_33,
      :other_identifier_34,
      :other_identifier_type_34,
      :other_identifier_state_34,
      :other_identifier_issuer_34,
      :other_identifier_35,
      :other_identifier_type_35,
      :other_identifier_state_35,
      :other_identifier_issuer_35,
      :other_identifier_36,
      :other_identifier_type_36,
      :other_identifier_state_36,
      :other_identifier_issuer_36,
      :other_identifier_37,
      :other_identifier_type_37,
      :other_identifier_state_37,
      :other_identifier_issuer_37,
      :other_identifier_38,
      :other_identifier_type_38,
      :other_identifier_state_38,
      :other_identifier_issuer_38,
      :other_identifier_39,
      :other_identifier_type_39,
      :other_identifier_state_39,
      :other_identifier_issuer_39,
      :other_identifier_40,
      :other_identifier_type_40,
      :other_identifier_state_40,
      :other_identifier_issuer_40,
      :other_identifier_41,
      :other_identifier_type_41,
      :other_identifier_state_41,
      :other_identifier_issuer_41,
      :other_identifier_42,
      :other_identifier_type_42,
      :other_identifier_state_42,
      :other_identifier_issuer_42,
      :other_identifier_43,
      :other_identifier_type_43,
      :other_identifier_state_43,
      :other_identifier_issuer_43,
      :other_identifier_44,
      :other_identifier_type_44,
      :other_identifier_state_44,
      :other_identifier_issuer_44,
      :other_identifier_45,
      :other_identifier_type_45,
      :other_identifier_state_45,
      :other_identifier_issuer_45,
      :other_identifier_46,
      :other_identifier_type_46,
      :other_identifier_state_46,
      :other_identifier_issuer_46,
      :other_identifier_47,
      :other_identifier_type_47,
      :other_identifier_state_47,
      :other_identifier_issuer_47,
      :other_identifier_48,
      :other_identifier_type_48,
      :other_identifier_state_48,
      :other_identifier_issuer_48,
      :other_identifier_49,
      :other_identifier_type_49,
      :other_identifier_state_49,
      :other_identifier_issuer_49,
      :other_identifier_50,
      :other_identifier_type_50,
      :other_identifier_state_50,
      :other_identifier_issuer_50,
      :sole_proprieter,
      :org_subpart,
      :parent_lbn,
      :parent_tin,
      :off_name_prefix,
      :off_name_suffix,
      :off_credentials,
      :taxonomy_group_1,
      :taxonomy_group_2,
      :taxonomy_group_3,
      :taxonomy_group_4,
      :taxonomy_group_5,
      :taxonomy_group_6,
      :taxonomy_group_7,
      :taxonomy_group_8,
      :taxonomy_group_9,
      :taxonomy_group_10,
      :taxonomy_group_11,
      :taxonomy_group_12,
      :taxonomy_group_13,
      :taxonomy_group_14,
      :taxonomy_group_15,
      :cert_date
    ])
    |> validate_required([:npi])
    |> unique_constraint(:npi)
    |> validate_length(:ein, max: 9)
    |> validate_length(:org_name, max: 70)
    |> validate_length(:last_name, max: 35)
    |> validate_length(:first_name, max: 20)
    |> validate_length(:middle_name, max: 20)
    |> validate_length(:name_prefix, max: 5)
    |> validate_length(:name_suffix, max: 5)
    |> validate_length(:credentials, max: 20)
    |> validate_length(:other_org_name, max: 70)
    |> validate_length(:other_org_name_type, max: 1)
    |> validate_length(:other_last_name, max: 35)
    |> validate_length(:other_first_name, max: 20)
    |> validate_length(:other_middle_name, max: 20)
    |> validate_length(:other_name_prefix, max: 5)
    |> validate_length(:other_name_suffix, max: 5)
    |> validate_length(:other_credential, max: 20)
    |> validate_length(:addr_mail_first, max: 55)
    |> validate_length(:addr_mail_second, max: 55)
    |> validate_length(:addr_mail_city, max: 40)
    |> validate_length(:addr_mail_state, max: 40)
    |> validate_length(:addr_mail_postal, max: 20)
    |> validate_length(:addr_mail_country, max: 2)
    |> validate_length(:addr_mail_phone, max: 20)
    |> validate_length(:addr_mail_fax, max: 20)
    |> validate_length(:addr_practice_first, max: 55)
    |> validate_length(:addr_practice_second, max: 55)
    |> validate_length(:addr_practice_city, max: 40)
    |> validate_length(:addr_practice_state, max: 40)
    |> validate_length(:addr_practice_postal, max: 20)
    |> validate_length(:addr_practice_country, max: 2)
    |> validate_length(:addr_practice_phone, max: 20)
    |> validate_length(:addr_practice_fax, max: 20)
    |> validate_length(:deactivate_reason, max: 2)
    |> validate_length(:gender, max: 1)
    |> validate_length(:off_last_name, max: 35)
    |> validate_length(:off_first_name, max: 20)
    |> validate_length(:off_middle_name, max: 20)
    |> validate_length(:off_title, max: 35)
    |> validate_length(:off_phone, max: 20)
    |> validate_length(:taxonomy_1, max: 10)
    |> validate_length(:license_num_1, max: 20)
    |> validate_length(:license_state_1, max: 2)
    |> validate_length(:taxonomy_switch_1, max: 1)
    |> validate_length(:taxonomy_2, max: 10)
    |> validate_length(:license_num_2, max: 20)
    |> validate_length(:license_state_2, max: 2)
    |> validate_length(:taxonomy_switch_2, max: 1)
    |> validate_length(:taxonomy_3, max: 10)
    |> validate_length(:license_num_3, max: 20)
    |> validate_length(:license_state_3, max: 2)
    |> validate_length(:taxonomy_switch_3, max: 1)
    |> validate_length(:taxonomy_4, max: 10)
    |> validate_length(:license_num_4, max: 20)
    |> validate_length(:license_state_4, max: 2)
    |> validate_length(:taxonomy_switch_4, max: 1)
    |> validate_length(:taxonomy_5, max: 10)
    |> validate_length(:license_num_5, max: 20)
    |> validate_length(:license_state_5, max: 2)
    |> validate_length(:taxonomy_switch_5, max: 1)
    |> validate_length(:taxonomy_6, max: 10)
    |> validate_length(:license_num_6, max: 20)
    |> validate_length(:license_state_6, max: 2)
    |> validate_length(:taxonomy_switch_6, max: 1)
    |> validate_length(:taxonomy_7, max: 10)
    |> validate_length(:license_num_7, max: 20)
    |> validate_length(:license_state_7, max: 2)
    |> validate_length(:taxonomy_switch_7, max: 1)
    |> validate_length(:taxonomy_8, max: 10)
    |> validate_length(:license_num_8, max: 20)
    |> validate_length(:license_state_8, max: 2)
    |> validate_length(:taxonomy_switch_8, max: 1)
    |> validate_length(:taxonomy_9, max: 10)
    |> validate_length(:license_num_9, max: 20)
    |> validate_length(:license_state_9, max: 2)
    |> validate_length(:taxonomy_switch_9, max: 1)
    |> validate_length(:taxonomy_10, max: 10)
    |> validate_length(:license_num_10, max: 20)
    |> validate_length(:license_state_10, max: 2)
    |> validate_length(:taxonomy_switch_10, max: 1)
    |> validate_length(:taxonomy_11, max: 10)
    |> validate_length(:license_num_11, max: 20)
    |> validate_length(:license_state_11, max: 2)
    |> validate_length(:taxonomy_switch_11, max: 1)
    |> validate_length(:taxonomy_12, max: 10)
    |> validate_length(:license_num_12, max: 20)
    |> validate_length(:license_state_12, max: 2)
    |> validate_length(:taxonomy_switch_12, max: 1)
    |> validate_length(:taxonomy_13, max: 10)
    |> validate_length(:license_num_13, max: 20)
    |> validate_length(:license_state_13, max: 2)
    |> validate_length(:taxonomy_switch_13, max: 1)
    |> validate_length(:taxonomy_14, max: 10)
    |> validate_length(:license_num_14, max: 20)
    |> validate_length(:license_state_14, max: 2)
    |> validate_length(:taxonomy_switch_14, max: 1)
    |> validate_length(:taxonomy_15, max: 10)
    |> validate_length(:license_num_15, max: 20)
    |> validate_length(:license_state_15, max: 2)
    |> validate_length(:taxonomy_switch_15, max: 1)
    |> validate_length(:other_identifier_1, max: 20)
    |> validate_length(:other_identifier_type_1, max: 2)
    |> validate_length(:other_identifier_state_1, max: 2)
    |> validate_length(:other_identifier_issuer_1, max: 80)
    |> validate_length(:other_identifier_2, max: 20)
    |> validate_length(:other_identifier_type_2, max: 2)
    |> validate_length(:other_identifier_state_2, max: 2)
    |> validate_length(:other_identifier_issuer_2, max: 80)
    |> validate_length(:other_identifier_3, max: 20)
    |> validate_length(:other_identifier_type_3, max: 2)
    |> validate_length(:other_identifier_state_3, max: 2)
    |> validate_length(:other_identifier_issuer_3, max: 80)
    |> validate_length(:other_identifier_4, max: 20)
    |> validate_length(:other_identifier_type_4, max: 2)
    |> validate_length(:other_identifier_state_4, max: 2)
    |> validate_length(:other_identifier_issuer_4, max: 80)
    |> validate_length(:other_identifier_5, max: 20)
    |> validate_length(:other_identifier_type_5, max: 2)
    |> validate_length(:other_identifier_state_5, max: 2)
    |> validate_length(:other_identifier_issuer_5, max: 80)
    |> validate_length(:other_identifier_6, max: 20)
    |> validate_length(:other_identifier_type_6, max: 2)
    |> validate_length(:other_identifier_state_6, max: 2)
    |> validate_length(:other_identifier_issuer_6, max: 80)
    |> validate_length(:other_identifier_7, max: 20)
    |> validate_length(:other_identifier_type_7, max: 2)
    |> validate_length(:other_identifier_state_7, max: 2)
    |> validate_length(:other_identifier_issuer_7, max: 80)
    |> validate_length(:other_identifier_8, max: 20)
    |> validate_length(:other_identifier_type_8, max: 2)
    |> validate_length(:other_identifier_state_8, max: 2)
    |> validate_length(:other_identifier_issuer_8, max: 80)
    |> validate_length(:other_identifier_9, max: 20)
    |> validate_length(:other_identifier_type_9, max: 2)
    |> validate_length(:other_identifier_state_9, max: 2)
    |> validate_length(:other_identifier_issuer_9, max: 80)
    |> validate_length(:other_identifier_10, max: 20)
    |> validate_length(:other_identifier_type_10, max: 2)
    |> validate_length(:other_identifier_state_10, max: 2)
    |> validate_length(:other_identifier_issuer_10, max: 80)
    |> validate_length(:other_identifier_11, max: 20)
    |> validate_length(:other_identifier_type_11, max: 2)
    |> validate_length(:other_identifier_state_11, max: 2)
    |> validate_length(:other_identifier_issuer_11, max: 80)
    |> validate_length(:other_identifier_12, max: 20)
    |> validate_length(:other_identifier_type_12, max: 2)
    |> validate_length(:other_identifier_state_12, max: 2)
    |> validate_length(:other_identifier_issuer_12, max: 80)
    |> validate_length(:other_identifier_13, max: 20)
    |> validate_length(:other_identifier_type_13, max: 2)
    |> validate_length(:other_identifier_state_13, max: 2)
    |> validate_length(:other_identifier_issuer_13, max: 80)
    |> validate_length(:other_identifier_14, max: 20)
    |> validate_length(:other_identifier_type_14, max: 2)
    |> validate_length(:other_identifier_state_14, max: 2)
    |> validate_length(:other_identifier_issuer_14, max: 80)
    |> validate_length(:other_identifier_15, max: 20)
    |> validate_length(:other_identifier_type_15, max: 2)
    |> validate_length(:other_identifier_state_15, max: 2)
    |> validate_length(:other_identifier_issuer_15, max: 80)
    |> validate_length(:other_identifier_16, max: 20)
    |> validate_length(:other_identifier_type_16, max: 2)
    |> validate_length(:other_identifier_state_16, max: 2)
    |> validate_length(:other_identifier_issuer_16, max: 80)
    |> validate_length(:other_identifier_17, max: 20)
    |> validate_length(:other_identifier_type_17, max: 2)
    |> validate_length(:other_identifier_state_17, max: 2)
    |> validate_length(:other_identifier_issuer_17, max: 80)
    |> validate_length(:other_identifier_18, max: 20)
    |> validate_length(:other_identifier_type_18, max: 2)
    |> validate_length(:other_identifier_state_18, max: 2)
    |> validate_length(:other_identifier_issuer_18, max: 80)
    |> validate_length(:other_identifier_19, max: 20)
    |> validate_length(:other_identifier_type_19, max: 2)
    |> validate_length(:other_identifier_state_19, max: 2)
    |> validate_length(:other_identifier_issuer_19, max: 80)
    |> validate_length(:other_identifier_20, max: 20)
    |> validate_length(:other_identifier_type_20, max: 2)
    |> validate_length(:other_identifier_state_20, max: 2)
    |> validate_length(:other_identifier_issuer_20, max: 80)
    |> validate_length(:other_identifier_21, max: 20)
    |> validate_length(:other_identifier_type_21, max: 2)
    |> validate_length(:other_identifier_state_21, max: 2)
    |> validate_length(:other_identifier_issuer_21, max: 80)
    |> validate_length(:other_identifier_22, max: 20)
    |> validate_length(:other_identifier_type_22, max: 2)
    |> validate_length(:other_identifier_state_22, max: 2)
    |> validate_length(:other_identifier_issuer_22, max: 80)
    |> validate_length(:other_identifier_23, max: 20)
    |> validate_length(:other_identifier_type_23, max: 2)
    |> validate_length(:other_identifier_state_23, max: 2)
    |> validate_length(:other_identifier_issuer_23, max: 80)
    |> validate_length(:other_identifier_24, max: 20)
    |> validate_length(:other_identifier_type_24, max: 2)
    |> validate_length(:other_identifier_state_24, max: 2)
    |> validate_length(:other_identifier_issuer_24, max: 80)
    |> validate_length(:other_identifier_25, max: 20)
    |> validate_length(:other_identifier_type_25, max: 2)
    |> validate_length(:other_identifier_state_25, max: 2)
    |> validate_length(:other_identifier_issuer_25, max: 80)
    |> validate_length(:other_identifier_26, max: 20)
    |> validate_length(:other_identifier_type_26, max: 2)
    |> validate_length(:other_identifier_state_26, max: 2)
    |> validate_length(:other_identifier_issuer_26, max: 80)
    |> validate_length(:other_identifier_27, max: 20)
    |> validate_length(:other_identifier_type_27, max: 2)
    |> validate_length(:other_identifier_state_27, max: 2)
    |> validate_length(:other_identifier_issuer_27, max: 80)
    |> validate_length(:other_identifier_28, max: 20)
    |> validate_length(:other_identifier_type_28, ma: 2)
    |> validate_length(:other_identifier_state_28, max: 2)
    |> validate_length(:other_identifier_issuer_28, max: 80)
    |> validate_length(:other_identifier_29, max: 20)
    |> validate_length(:other_identifier_type_29, max: 2)
    |> validate_length(:other_identifier_state_29, max: 2)
    |> validate_length(:other_identifier_issuer_29, max: 80)
    |> validate_length(:other_identifier_30, max: 20)
    |> validate_length(:other_identifier_type_30, max: 2)
    |> validate_length(:other_identifier_state_30, max: 2)
    |> validate_length(:other_identifier_issuer_30, max: 80)
    |> validate_length(:other_identifier_31, max: 20)
    |> validate_length(:other_identifier_type_31, max: 2)
    |> validate_length(:other_identifier_state_31, max: 2)
    |> validate_length(:other_identifier_issuer_31, max: 80)
    |> validate_length(:other_identifier_32, max: 20)
    |> validate_length(:other_identifier_type_32, max: 2)
    |> validate_length(:other_identifier_state_32, max: 2)
    |> validate_length(:other_identifier_issuer_32, max: 80)
    |> validate_length(:other_identifier_33, max: 20)
    |> validate_length(:other_identifier_type_33, max: 2)
    |> validate_length(:other_identifier_state_33, max: 2)
    |> validate_length(:other_identifier_issuer_33, max: 80)
    |> validate_length(:other_identifier_34, max: 20)
    |> validate_length(:other_identifier_type_34, max: 2)
    |> validate_length(:other_identifier_state_34, max: 2)
    |> validate_length(:other_identifier_issuer_34, max: 80)
    |> validate_length(:other_identifier_35, max: 20)
    |> validate_length(:other_identifier_type_35, max: 2)
    |> validate_length(:other_identifier_state_35, max: 2)
    |> validate_length(:other_identifier_issuer_35, max: 80)
    |> validate_length(:other_identifier_36, max: 20)
    |> validate_length(:other_identifier_type_36, max: 2)
    |> validate_length(:other_identifier_state_36, max: 2)
    |> validate_length(:other_identifier_issuer_36, max: 80)
    |> validate_length(:other_identifier_37, max: 20)
    |> validate_length(:other_identifier_type_37, max: 2)
    |> validate_length(:other_identifier_state_37, max: 2)
    |> validate_length(:other_identifier_issuer_37, max: 80)
    |> validate_length(:other_identifier_38, max: 20)
    |> validate_length(:other_identifier_type_38, max: 2)
    |> validate_length(:other_identifier_state_38, max: 2)
    |> validate_length(:other_identifier_issuer_38, max: 80)
    |> validate_length(:other_identifier_39, max: 20)
    |> validate_length(:other_identifier_type_39, max: 2)
    |> validate_length(:other_identifier_state_39, max: 2)
    |> validate_length(:other_identifier_issuer_39, max: 80)
    |> validate_length(:other_identifier_40, max: 20)
    |> validate_length(:other_identifier_type_40, max: 2)
    |> validate_length(:other_identifier_state_40, max: 2)
    |> validate_length(:other_identifier_issuer_40, max: 80)
    |> validate_length(:other_identifier_41, max: 20)
    |> validate_length(:other_identifier_type_41, max: 2)
    |> validate_length(:other_identifier_state_41, max: 2)
    |> validate_length(:other_identifier_issuer_41, max: 80)
    |> validate_length(:other_identifier_42, max: 20)
    |> validate_length(:other_identifier_type_42, max: 2)
    |> validate_length(:other_identifier_state_42, max: 2)
    |> validate_length(:other_identifier_issuer_42, max: 80)
    |> validate_length(:other_identifier_43, max: 20)
    |> validate_length(:other_identifier_type_43, max: 2)
    |> validate_length(:other_identifier_state_43, max: 2)
    |> validate_length(:other_identifier_issuer_43, max: 80)
    |> validate_length(:other_identifier_44, max: 20)
    |> validate_length(:other_identifier_type_44, max: 2)
    |> validate_length(:other_identifier_state_44, max: 2)
    |> validate_length(:other_identifier_issuer_44, max: 80)
    |> validate_length(:other_identifier_45, max: 20)
    |> validate_length(:other_identifier_type_45, max: 2)
    |> validate_length(:other_identifier_state_45, max: 2)
    |> validate_length(:other_identifier_issuer_45, max: 80)
    |> validate_length(:other_identifier_46, max: 20)
    |> validate_length(:other_identifier_type_46, max: 2)
    |> validate_length(:other_identifier_state_46, max: 2)
    |> validate_length(:other_identifier_issuer_46, max: 80)
    |> validate_length(:other_identifier_47, max: 20)
    |> validate_length(:other_identifier_type_47, max: 2)
    |> validate_length(:other_identifier_state_47, max: 2)
    |> validate_length(:other_identifier_issuer_47, max: 80)
    |> validate_length(:other_identifier_48, max: 20)
    |> validate_length(:other_identifier_type_48, max: 2)
    |> validate_length(:other_identifier_state_48, max: 2)
    |> validate_length(:other_identifier_issuer_48, max: 80)
    |> validate_length(:other_identifier_49, max: 20)
    |> validate_length(:other_identifier_type_49, max: 2)
    |> validate_length(:other_identifier_state_49, max: 2)
    |> validate_length(:other_identifier_issuer_49, max: 80)
    |> validate_length(:other_identifier_50, max: 20)
    |> validate_length(:other_identifier_type_50, max: 2)
    |> validate_length(:other_identifier_state_50, max: 2)
    |> validate_length(:other_identifier_issuer_50, max: 80)
    |> validate_length(:sole_proprieter, max: 1)
    |> validate_length(:org_subpart, max: 1)
    |> validate_length(:parent_lbn, max: 70)
    |> validate_length(:parent_tin, max: 9)
    |> validate_length(:off_name_prefix, max: 5)
    |> validate_length(:off_name_suffix, max: 5)
    |> validate_length(:off_credentials, max: 20)
  end
end
