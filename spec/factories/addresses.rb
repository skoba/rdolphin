FactoryGirl.define do
  factory :address do
    post_code "600-8811"
    address_type "BUSINESS"
    unstructured "91 Chudoji Awatacho Shimogyo-ku, Kyoto"
    prefecture "Kyoto"
    state "Kinki"
    city "Kyoto"
    town "Awatacho"
    valid_from "2014-06-11"
    valid_to "2014-06-11"
  end
end
