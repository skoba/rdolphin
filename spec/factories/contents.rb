# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :content do
    archetypeid "openEHR-EHR-ENTRY.v1"
    nodeid "at0002"
    path "/data/item[at0002]"
#    content nil
    name "root"
  end

  factory :entry do
    archetypeid "openEHR-EHR-ENTRY.v1"
    nodeid "at0002"
    path "/data/item[at0002]"
#    content nil
    name "r"    
  end
end
