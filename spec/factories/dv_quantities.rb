FactoryGirl.define do
  factory :dv_quantity do
    rm_type_name 'DV_QUANTITY'
    archetype_id 'openEHR-EHR-OBSERVATION.blood_pressure.v1'
    name "Systolic blood pressure"
    path "/items[at0003]/value"
    node_id "at0003"
    num_value 120
  end
end
