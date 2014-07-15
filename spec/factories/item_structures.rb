# composite pattern
FactoryGirl.define do
  factory :item_structure do
    name "Item Structure"
    archetype_id "openEHR-EHR-ITEM_STRUCTURE.test.v1"
    path "[openEHR-EHR-ITEM_STRUCTURE.test.v1]/item"
    rm_type_name "ItemStructure"
  end
end
