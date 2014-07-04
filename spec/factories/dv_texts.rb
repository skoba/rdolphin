FactoryGirl.define do
  factory :dv_text do
    rm_type_name 'DV_TEXT'
    archetype_id 'openEHR-EHR-CLUSTER.symptom.v1'
    name "symptom"
    path "/items[at0002]/value"
    node_id "at0002"
    txt_value 'headache'
  end
end
