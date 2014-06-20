FactoryGirl.define do
  factory :dv_text do
    rm_type_name 'DV_TEXT'
    archetype_id 'openEHR-EHR-CLUSTER.symptom.v1'
    name "Systolic blood pressure"
    path "/items[at0002]/value"
    node_id "at0002"
    txt_value 120
  end
end
