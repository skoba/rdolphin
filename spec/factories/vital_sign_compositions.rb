require 'ffaker'

FactoryGirl.define do
  factory :vital_sign_composition do
    uid { SecureRandom.uuid }
    category "persistent"
    start_time { Faker::Time.date }
#    archetype_id "openEHR-EHR-COMPOSITION-Report-vital_sign.v1"
    ehr
  end
end