FactoryGirl.define do
  factory :telecom do
    telecom_type "BUSINESS"
    unstructured "+81-75-874-7030"
    country_code "+81"
    area_code "75"
    number "874-7030"
    extension "55"
    email_address "skoba@moss.gr.jp"

    factory :home_telecom do
      telecom_type 'HOME'
    end

    factory :business_telecom do

    end

    factory :mobile_telecom do
      telecom_type 'MOBILE'
    end
  end
end
