FactoryGirl.define do
  factory :dv_date do
    rm_type_name 'DV_DATE'
    archetype_id 'openEHR-EHR-INSTRUCTION.medication_order.v1'
    name "Start date"
    path "/content/activities[at0001]/description[at0002]/items[at0010]/items[at0029]/value"
    node_id "at0029"
    date_value '2014-07-01'
  end
end
