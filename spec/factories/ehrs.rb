FactoryGirl.define do
  factory :ehr, class: Ehr do
    ehr_id { SecureRandom.uuid }
    queryable true
    modifiable false
  end

  factory :concrete_ehr do
    ehr_id { SecureRandom.uuid }
    queryable true
    modifiable false
    after(:build) do |ehr|
      ehr.compositions << build(:composition)
    end
  end
end
