FactoryGirl.define do
  factory :composition do
    uid { SecureRandom.uuid }
    category "persistent"
    start_time "2014-06-13 02:05:42"
    name 'report'
    archetype_id "openEHR-EHR-COMPOSITION-Report.v1"
    ehr
  end

  factory :concrete_composition, class: Composition do
    uid { SecureRandom.uuid }
    category "persistent"
    start_time "2014-06-13 02:05:42"
    archetype_id "openEHR-EHR-COMPOSITION-Report.v1"
    name 'report'
    ehr
    after(:build) do |composition|
      composition.content_items << build(:content_item)
    end
  end
end
