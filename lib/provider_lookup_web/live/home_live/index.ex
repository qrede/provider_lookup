defmodule ProviderLookupWeb.HomeLive.Index do
  @moduledoc false
  use ProviderLookupWeb, :live_view

  alias ProviderLookup.Medical.CoreNpi
  alias ProviderLookupWeb.QueryFilterEx
  import Ecto.Query

  @core_npi_filters [
    %{name: :last_name, type: :string, binding: :core_npi, field_name: :last_name, method: :eq},
    %{name: :first_name, type: :string, binding: :core_npi, field_name: :first_name, method: :eq},
    %{name: :city, type: :string, binding: :core_npi, field_name: :city, method: :eq},
    %{name: :state, type: :string, binding: :core_npi, field_name: :state, method: :eq},
    %{name: :zip, type: :string, binding: :core_npi, field_name: :zip, method: :eq},
    %{
      name: :description,
      type: :string,
      binding: :core_npi,
      field_name: :description,
      method: :eq
    }
  ]

  @core_npi_sort_fields [
    "core_npi__last_name",
    "core_npi__first_name",
    "core_npi__description"
  ]

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:state_options, state_options())
     |> assign(:description_options, description_options())
     |> assign(:pagination, nil)
     |> assign(:results, [])
     |> assign(:display, nil)}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply,
     socket
     |> assign(:display, nil)
     |> apply_action(socket.assigns.live_action, params)}
  end

  defp apply_action(socket, _live_action, %{"filter" => filter} = params) do
    socket
    |> assign_search_form(filter)
    |> fetch_core_apis(params)
  end

  defp apply_action(socket, _live_action, params) do
    socket
    |> assign_search_form(params)
    |> assign(:current_uri, current_path(socket.assigns.current_uri, params))
  end

  @impl true
  def handle_event(
        "filter",
        %{
          "filter" => %{
            "last_name" => "",
            "first_name" => "",
            "city" => "",
            "state" => "",
            "zip" => "",
            "description" => ""
          }
        },
        socket
      ) do
    {:noreply,
     socket
     |> put_flash(:error, "Please enter search parameters.")
     |> assign(:results, [])}
  end

  def handle_event("filter", params, socket) do
    new_params =
      params
      |> Map.put("page", 1)

    {
      :noreply,
      push_patch(socket, to: current_path(socket.assigns.current_uri, new_params))
    }
  end

  def handle_event("detail", %{"id" => id}, socket) do
    {:noreply,
     socket
     |> assign(:display, true)
     |> assign(:current_id, id)}
  end

  defp fetch_core_apis(socket, params) do
    new_params =
      params
      |> Enum.map(fn {k, v} ->
        if k == "filter" do
          {k,
           Enum.map(v, fn {k1, v1} ->
             {k1, String.upcase(v1)}
           end)
           |> Enum.into(%{})}
        else
          {k, v}
        end
      end)
      |> Enum.into(%{})

    changeset = QueryFilterEx.get_changeset_from_params(new_params, @core_npi_filters)

    page =
      from(cn in CoreNpi,
        as: :core_npi
      )
      |> QueryFilterEx.filter(changeset, @core_npi_filters)
      |> QueryFilterEx.sort_by_params(new_params, @core_npi_sort_fields)
      |> ProviderLookup.Repo.paginate(new_params)

    socket
    |> assign(:pagination, Map.delete(page, :entries))
    |> assign(:results, page.entries)
  end

  defp assign_search_form(socket, params) do
    assign(socket, :search_form, to_form(params, as: "filter"))
  end

  defp state_options() do
    [
      Alabama: "AL",
      Alaska: "AK",
      Arizona: "AZ",
      Arkansas: "AR",
      California: "CA",
      Colorado: "CO",
      Connecticut: "CT",
      Delaware: "DE",
      "District Of Columbia": "DC",
      Florida: "FL",
      Georgia: "GA",
      Hawaii: "HI",
      Idaho: "ID",
      Illinois: "IL",
      Indiana: "IN",
      Iowa: "IA",
      Kansas: "KS",
      Kentucky: "KY",
      Louisiana: "LA",
      Maine: "ME",
      Maryland: "MD",
      Massachusetts: "MA",
      Michigan: "MI",
      Minnesota: "MN",
      Mississippi: "MS",
      Missouri: "MO",
      Montana: "MT",
      Nebraska: "NE",
      Nevada: "NV",
      "New Hampshire": "NH",
      "New Jersey": "NJ",
      "New Mexico": "NM",
      "New York": "NY",
      "North Carolina": "NC",
      "North Dakota": "ND",
      Ohio: "OH",
      Oklahoma: "OK",
      Oregon: "OR",
      Pennsylvania: "PA",
      "Rhode Island": "RI",
      "South Carolina": "SC",
      "South Dakota": "SD",
      Tennessee: "TN",
      Texas: "TX",
      Utah: "UT",
      Vermont: "VT",
      Virginia: "VA",
      Washington: "WA",
      "West Virginia": "WV",
      Wisconsin: "WI",
      Wyoming: "WY"
    ]
  end

  defp description_options() do
    [
      Acupuncturist: "Acupuncturist",
      "Adult Companion": "Adult Companion",
      "Advanced Practice Dental Therapist": "Advanced Practice Dental Therapist",
      "Advanced Practice Midwife": "Advanced Practice Midwife",
      "Allergy & Immunology": "Allergy & Immunology",
      "Alzheimer Center (Dementia Center)": "Alzheimer Center (Dementia Center)",
      Ambulance: "Ambulance",
      Anaplastologist: "Anaplastologist",
      "Anesthesiologist Assistant": "Anesthesiologist Assistant",
      Anesthesiology: "Anesthesiology",
      "Art Therapist": "Art Therapist",
      "Assistant Behavior Analyst": "Assistant Behavior Analyst",
      "Assistant, Podiatric": "Assistant, Podiatric",
      "Assisted Living Facility": "Assisted Living Facility",
      Audiologist: "Audiologist",
      "Audiologist-Hearing Aid Fitter": "Audiologist-Hearing Aid Fitter",
      "Behavior Analyst": "Behavior Analyst",
      "Behavior Technician": "Behavior Technician",
      "Blood Bank": "Blood Bank",
      Bus: "Bus",
      "Case Management": "Case Management",
      "Case Manager/Care Coordinator": "Case Manager/Care Coordinator",
      Chiropractor: "Chiropractor",
      "Chore Provider": "Chore Provider",
      "Chronic Disease Hospital": "Chronic Disease Hospital",
      "Clinic/Center": "Clinic/Center",
      "Clinical Ethicist": "Clinical Ethicist",
      "Clinical Exercise Physiologist": "Clinical Exercise Physiologist",
      "Clinical Medical Laboratory": "Clinical Medical Laboratory",
      "Clinical Neuropsychologist<": "Clinical Neuropsychologist",
      "Clinical Nurse Specialist": "Clinical Nurse Specialist",
      "Clinical Pharmacology": "Clinical Pharmacology",
      "Colon & Rectal Surgery": "Colon & Rectal Surgery",
      "Community Based Residential Treatment Facility, Intellectual and/or Developmental Disabilities":
        "Community Based Residential Treatment Facility, Intellectual and/or Developmental Disabilities",
      "Community Based Residential Treatment Facility, Mental Illness":
        "Community Based Residential Treatment Facility, Mental Illness",
      "Community Health Worker": "Community Health Worker",
      "Community/Behavioral Health": "Community/Behavioral Health",
      Contractor: "Contractor",
      Counselor: "Counselor",
      "Custodial Care Facility": "Custodial Care Facility",
      "Dance Therapist": "Dance Therapist",
      "Day Training, Developmentally Disabled Services":
        "Day Training, Developmentally Disabled Services",
      "Day Training/Habilitation Specialist": "Day Training/Habilitation Specialist",
      "Dental Assistant": "Dental Assistant",
      "Dental Hygienist": "Dental Hygienist",
      "Dental Laboratory": "Dental Laboratory",
      "Dental Laboratory Technician": "Dental Laboratory Technician",
      "Dental Therapist": "Dental Therapist",
      Dentist: "Dentist",
      Denturist: "Denturist",
      "Department of Veterans Affairs (VA) Pharmacy":
        "Department of Veterans Affairs (VA) Pharmacy",
      Dermatology: "Dermatology",
      "Developmental Therapist": "Developmental Therapist",
      "Dietary Manager": "Dietary Manager",
      "Dietetic Technician, Registered": "Dietetic Technician, Registered",
      "Dietitian, Registered": "Dietitian, Registered",
      Doula: "Doula",
      Driver: "Driver",
      "Durable Medical Equipment & Medical Supplies":
        "Durable Medical Equipment & Medical Supplies",
      "Early Intervention Provider Agency": "Early Intervention Provider Agency",
      "Electrodiagnostic Medicine": "Electrodiagnostic Medicine",
      "Emergency Medical Technician, Basic": "Emergency Medical Technician, Basic",
      "Emergency Medical Technician, Intermediate": "Emergency Medical Technician, Intermediate",
      "Emergency Medical Technician, Paramedic": "Emergency Medical Technician, Paramedic",
      "Emergency Medicine": "Emergency Medicine",
      "Emergency Response System Companies": "Emergency Response System Companies",
      "Epilepsy Unit": "Epilepsy Unit",
      "Exclusive Provider Organization": "Exclusive Provider Organization",
      "Eyewear Supplier": "Eyewear Supplier",
      "Family Medicine": "Family Medicine",
      "Foster Care Agency": "Foster Care Agency",
      "Funeral Director": "Funeral Director",
      "General Acute Care Hospital": "General Acute Care Hospital",
      "General Practice": "General Practice",
      "Genetic Counselor, MS": "Genetic Counselor, MS",
      "Health Educator": "Health Educator",
      "Health Maintenance Organization": "Health Maintenance Organization",
      "Hearing Aid Equipment": "Hearing Aid Equipment",
      "Hearing Instrument Specialist": "Hearing Instrument Specialist",
      "Home Delivered Meals": "Home Delivered Meals",
      "Home Health": "Home Health",
      "Home Health Aide": "Home Health Aide",
      "Home Infusion": "Home Infusion",
      Homemaker: "Homemaker",
      Homeopath: "Homeopath",
      "Hospice Care, Community Based": "Hospice Care, Community Based",
      "Hospice, Inpatient": "Hospice, Inpatient",
      Hospitalist: "Hospitalist",
      "In Home Supportive Care": "In Home Supportive Care",
      "Independent Medical Examiner": "Independent Medical Examiner",
      "Intermediate Care Facility, Mental Illness": "Intermediate Care Facility, Mental Illness",
      "Intermediate Care Facility, Mentally Retarded":
        "Intermediate Care Facility, Mentally Retarded",
      "Internal Medicine": "Internal Medicine",
      Interpreter: "Interpreter",
      Kinesiotherapist: "Kinesiotherapist",
      "Lactation Consultant, Non-RN": "Lactation Consultant, Non-RN",
      "Legal Medicine": "Legal Medicine",
      "Licensed Practical Nurse": "Licensed Practical Nurse",
      "Licensed Psychiatric Technician": "Licensed Psychiatric Technician",
      "Licensed Vocational Nurse": "Licensed Vocational Nurse",
      "Local Education Agency (LEA)": "Local Education Agency (LEA)",
      Lodging: "Lodging",
      "Long Term Care Hospital": "Long Term Care Hospital",
      "Marriage & Family Therapist": "Marriage & Family Therapist",
      "Massage Therapist": "Massage Therapist",
      "Mastectomy Fitter": "Mastectomy Fitter",
      Meals: "Meals",
      Mechanotherapist: "Mechanotherapist",
      "Medical Foods Supplier": "Medical Foods Supplier",
      "Medical Genetics": "Medical Genetics",
      "Medical Genetics, Ph.D. Medical Genetics": "Medical Genetics, Ph.D. Medical Genetics",
      "Medicare Defined Swing Bed Unit": "Medicare Defined Swing Bed Unit",
      Midwife: "Midwife",
      "Midwife, Lay": "Midwife, Lay",
      "Military Clinical Medical Laboratory": "Military Clinical Medical Laboratory",
      "Military Health Care Provider": "Military Health Care Provider",
      "Military Hospital": "Military Hospital",
      "Military/U.S. Coast Guard Pharmacy": "Military/U.S. Coast Guard Pharmacy",
      "Military/U.S. Coast Guard Transport": "Military/U.S. Coast Guard Transport",
      "Multi-Specialty": "Multi-Specialty",
      "Music Therapist": "Music Therapist",
      Naprapath: "Naprapath",
      Naturopath: "Naturopath",
      "Neurological Surgery": "Neurological Surgery",
      "Neuromusculoskeletal Medicine & OMM": "Neuromusculoskeletal Medicine & OMM",
      "Neuromusculoskeletal Medicine, Sports Medicine":
        "Neuromusculoskeletal Medicine, Sports Medicine",
      "Non-Pharmacy Dispensing Site": "Non-Pharmacy Dispensing Site",
      "Non-emergency Medical Transport (VAN)": "Non-emergency Medical Transport (VAN)",
      "Nuclear Medicine": "Nuclear Medicine",
      "Nurse Anesthetist, Certified Registered": "Nurse Anesthetist, Certified Registered",
      "Nurse Practitioner": "Nurse Practitioner",
      "Nurse's Aide": "Nurse's Aide",
      "Nursing Care": "Nursing Care",
      "Nursing Facility/Intermediate Care Facility":
        "Nursing Facility/Intermediate Care Facility",
      "Nursing Home Administrator": "Nursing Home Administrator",
      Nutritionist: "Nutritionist",
      "Obstetrics & Gynecology": "Obstetrics & Gynecology",
      "Occupational Therapist": "Occupational Therapist",
      "Occupational Therapy Assistant": "Occupational Therapy Assistant",
      Ophthalmology: "Ophthalmology",
      Optometrist: "Optometrist",
      "Oral & Maxillofacial Surgery": "Oral & Maxillofacial Surgery",
      "Oral Medicinist": "Oral Medicinist",
      "Orthopaedic Surgery": "Orthopaedic Surgery",
      "Orthotic Fitter": "Orthotic Fitter",
      Orthotist: "Orthotist",
      Otolaryngology: "Otolaryngology",
      "Pain Medicine": "Pain Medicine",
      Pathology: "Pathology",
      Pediatrics: "Pediatrics",
      Pedorthist: "Pedorthist",
      "Peer Specialist": "Peer Specialist",
      Perfusionist: "Perfusionist",
      "Personal Emergency Response Attendant": "Personal Emergency Response Attendant",
      Pharmacist: "Pharmacist",
      Pharmacy: "Pharmacy",
      "Pharmacy Technician": "Pharmacy Technician",
      Phlebology: "Phlebology",
      "Physical Medicine & Rehabilitation": "Physical Medicine & Rehabilitation",
      "Physical Therapist": "Physical Therapist",
      "Physical Therapy Assistant": "Physical Therapy Assistant",
      "Physician Assistant": "Physician Assistant",
      "Physiological Laboratory": "Physiological Laboratory",
      "Plastic Surgery": "Plastic Surgery",
      Podiatrist: "Podiatrist",
      "Poetry Therapist": "Poetry Therapist",
      "Point of Service": "Point of Service",
      "Portable X-ray and/or Other Portable Diagnostic Imaging Supplier":
        "Portable X-ray and/or Other Portable Diagnostic Imaging Supplier",
      "Preferred Provider Organization": "Preferred Provider Organization",
      "Prevention Professional": "Prevention Professional",
      "Preventive Medicine": "Preventive Medicine",
      "Private Vehicle": "Private Vehicle",
      "Program of All-Inclusive Care for the Elderly (PACE) Provider Organization":
        "Program of All-Inclusive Care for the Elderly (PACE) Provider Organization",
      "Prosthetic/Orthotic Supplier": "Prosthetic/Orthotic Supplier",
      Prosthetist: "Prosthetist",
      "Psychiatric Hospital": "Psychiatric Hospital",
      "Psychiatric Residential Treatment Facility": "Psychiatric Residential Treatment Facility",
      "Psychiatric Unit": "Psychiatric Unit",
      "Psychiatry & Neurology": "Psychiatry & Neurology",
      Psychoanalyst: "Psychoanalyst",
      Psychologist: "Psychologist",
      "Public Health or Welfare": "Public Health or Welfare",
      "Pulmonary Function Technologist": "Pulmonary Function Technologist",
      "Radiologic Technologist": "Radiologic Technologist",
      Radiology: "Radiology",
      "Radiology Practitioner Assistant": "Radiology Practitioner Assistant",
      "Recreation Therapist": "Recreation Therapist",
      "Recreational Therapist Assistant": "Recreational Therapist Assistant",
      Reflexologist: "Reflexologist",
      "Registered Nurse": "Registered Nurse",
      "Rehabilitation Counselor": "Rehabilitation Counselor",
      "Rehabilitation Hospital": "Rehabilitation Hospital",
      "Rehabilitation Practitioner": "Rehabilitation Practitioner",
      "Rehabilitation Unit": "Rehabilitation Unit",
      "Rehabilitation, Substance Use Disorder Unit":
        "Rehabilitation, Substance Use Disorder Unit",
      "Religious Nonmedical Health Care Institution":
        "Religious Nonmedical Health Care Institution",
      "Religious Nonmedical Nursing Personnel": "Religious Nonmedical Nursing Personnel",
      "Religious Nonmedical Practitioner": "Religious Nonmedical Practitioner",
      "Residential Treatment Facility, Emotionally Disturbed Children":
        "Residential Treatment Facility, Emotionally Disturbed Children",
      "Residential Treatment Facility, Intellectual and/or Developmental Disabilities":
        "Residential Treatment Facility, Intellectual and/or Developmental Disabilities",
      "Residential Treatment Facility, Physical Disabilities":
        "Residential Treatment Facility, Physical Disabilities",
      "Respiratory Therapist, Certified": "Respiratory Therapist, Certified",
      "Respiratory Therapist, Registered": "Respiratory Therapist, Registered",
      "Respite Care": "Respite Care",
      "Secured Medical Transport (VAN)": "Secured Medical Transport (VAN)",
      "Single Specialty": "Single Specialty",
      "Skilled Nursing Facility": "Skilled Nursing Facility",
      "Sleep Specialist, PhD": "Sleep Specialist, PhD",
      "Social Worker<": "Social Worker<",
      "Special Hospital": "Special Hospital",
      Specialist: "Specialist",
      "Specialist/Technologist": "Specialist/Technologist",
      "Specialist/Technologist Cardiovascular": "Specialist/Technologist Cardiovascular",
      "Specialist/Technologist, Health Information":
        "Specialist/Technologist, Health Information",
      "Specialist/Technologist, Other": "Specialist/Technologist, Other",
      "Specialist/Technologist, Pathology": "Specialist/Technologist, Pathology",
      "Speech-Language Pathologist": "Speech-Language Pathologist",
      "Student in an Organized Health Care Education/Training Program":
        "Student in an Organized Health Care Education/Training Program",
      "Substance Abuse Rehabilitation Facility": "Substance Abuse Rehabilitation Facility",
      "Supports Brokerage": "Supports Brokerage",
      Surgery: "Surgery",
      Taxi: "Taxi",
      Technician: "Technician",
      "Technician, Cardiology": "Technician, Cardiology",
      "Technician, Health Information": "Technician, Health Information",
      "Technician, Other": "Technician, Other",
      "Technician, Pathology": "Technician, Pathology",
      "Technician/Technologist": "Technician/Technologist",
      "Thoracic Surgery (Cardiothoracic Vascular Surgery)":
        "Thoracic Surgery (Cardiothoracic Vascular Surgery)",
      Train: "Train",
      "Transplant Surgery": "Transplant Surgery",
      "Transportation Broker": "Transportation Broker",
      Urology: "Urology",
      Veterinarian: "Veterinarian",
      "Voluntary or Charitable": "Voluntary or Charitable"
    ]
  end
end
