FactoryGirl.define do
  factory :dv_boolean do
    rm_type_name 'DV_BOOLEAN'
    archetype_id 'openEHR-EHR-INSTRUCTION.medication_order.v1'
    name "Long-term"
    path "/items[at0017]/value"
    node_id "at0017"
    bool_value false
  end
end
