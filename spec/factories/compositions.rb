FactoryGirl.define do
  factory :composition do
    uid { SecureRandom.uuid }
    category "persistent"
    startTime "2014-06-13 02:05:42"
    archetype_id "openEHR-EHR-COMPOSITION-Report.v1"
    ehr
  end
end
