FactoryGirl.define do


  factory :prescription do
    uid { SecureRandom.uuid }
    category "persistent"
    start_time { Faker::Time.date }
    ehr
    # after(:create) do |prescription|
    #   .content_items << create(:content_item)
    # end

  end
end


