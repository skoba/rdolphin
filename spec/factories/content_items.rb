# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :content_item do
    rm_type_name "DV_TEXT"
    archetype_id "openEHR-EHR-OBSERVATION-blood_pressure.v1"
    name "Systolic blood pressure"
    path "/[at0001]/openEHR-EHR-OBSERVATION-blood_pressure.v1/value"
    node_id "at0003"
    num_value 120
  end
end
