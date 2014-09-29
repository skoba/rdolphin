# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :content_item do
#    composition nil
    name "Laboratory test"
    archetypeid "openEHR-EHR-OBSERVATION.lab_test.v1"
    rm_type "OBSERVATION"
    nodeid "at0004"
    path "/content[at0002]/value"
  end

  factory :observation do
    name 'Blood pressure'
    archetypeid 'openEHR-EHR-OBSRVATION.blood_pressure.v1'
    rm_type 'OBSERVATION'
    nodeid 'at0000'
    path '/content[at0001]/entry'
  end
end
