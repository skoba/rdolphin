FactoryGirl.define do
  factory :dv_coded_text do
    rm_type_name 'DV_CODED_TEXT'
    archetype_id 'openEHR-EHR-OBSERVATION.blod_pressure.v1'
    name "position"
    path "/items[at0008]/value"
    node_id "at0008"
    code 'local::at1000'
    txt_value 'standing'
  end
end
