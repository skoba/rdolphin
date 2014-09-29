# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :content_item do
#    composition nil
    name "Laboratory test"
    nodeid "at0004"
    archetypeid "openEHR-EHR-OBSERVATION.lab_test.v1"
    path "/content[at0002]/value"
    rm_type "OBSERVATION"
  end
end
