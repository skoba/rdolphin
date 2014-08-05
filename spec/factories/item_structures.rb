FactoryGirl.define do
  factory :item_structure do
    name "Test structure"
    type "ItemStructure"
    archetypeid "openEHR-EHR-ITEM_STRUCTURE.test.v1"
    nodeid "at0001"
    path "/data/item[at0001]"
  end

  factory :element do
    name 'Leaf element'
    type 'Element'
    archetypeid 'openEHR-EHR-ITEM_STRUCTURE.test.v1'
    nodeid 'at0001'
    path '/data/item[at00001]/value'
  end
end
