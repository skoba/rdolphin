FactoryGirl.define do
  factory :item_structure do
    name "Test structure"
    type "ItemStructure"
    archetypeid "openEHR-EHR-ITEM_STRUCTURE.test.v1"
    nodeid "at0001"
    path "/data/item[at0001]"
  end
end
