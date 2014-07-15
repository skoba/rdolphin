# composite pattern
FactoryGirl.define do
  factory :item_structure do
    name "Item Structure"
    archetype_id "openEHR-EHR-ITEM_STRUCTURE.test.v1"
    node_id 'at0003'
    path "[openEHR-EHR-ITEM_STRUCTURE.test.v1]/item"
    rm_type_name "ITEM_STRUCTURE"
  end

  factory :cluster do
    name 'Cluster'
    archetype_id 'openEHR-EHR-CLUSTER.test.v1'
    path '[openEHR-EHR-ITEM_STRUCTURE.test.v1]/item[at001]/'
    node_id 'at0001'
    rm_type_name 'CLUSTER'
    association :item, factory: :item_structure
  end

  factory :element do
    name 'Element'
    archetype_id 'openEHR-EHR-ELEMENT.test.v1'
    path '[openEHR-EHR-ITEM_STRUCTURE.test.v1]/item[at001]/value'
    node_id 'at0002'
    rm_type_name 'ELEMENT'
    association :item, factory: :cluster
    after(:build) do |element|
      element.data_value = build(:dv_text)
    end
  end
end
