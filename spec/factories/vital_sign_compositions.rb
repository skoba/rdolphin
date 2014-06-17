require 'ffaker'

FactoryGirl.define do
  factory :vital_sign_composition do
    uid { SecureRandom.uuid }
    category "persistent"
    start_time { Faker::Time.date }
    ehr
    after(:create) do |vital_sign_composition|
      vital_sign_composition.content_items << create(:content_item)
    end
    #    archetype_id "openEHR-EHR-COMPOSITION-Report-vital_sign.v1"
  end

end
