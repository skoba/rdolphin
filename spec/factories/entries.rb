FactoryGirl.define do
  factory :entry do
    rm_type_name "ENTRY"
    archetype_id "CIMI-Core-ENTRY.Urinalysis.v1"
    name "Urinalysis panel"
    path "[CIMI-Core-ENTRY.Urinalysis.v1]/name"
    node_id "at0000.1"
    association :item, factory: :content_item
  end
end
