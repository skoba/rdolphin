FactoryGirl.define do
  factory :ehr do
    ehr_id { SecureRandom.uuid }
    queryable true
    modifiable false
    person
  end
end
