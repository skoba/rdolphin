require 'ffaker'

FactoryGirl.define do
  factory :vital_sign do
    uid { SecureRandom.uuid }
    category "persistent"
    start_time { Faker::Time.date }
    ehr
    after(:create) do |vital_sign|
      vital_sign.content_items << create(:content_item)
    end
    #    archetype_id "openEHR-EHR-COMPOSITION-Report-vital_sign.v1"
  end
end
