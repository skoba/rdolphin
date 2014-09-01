# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    name 'home'
    purpose "CLAIM"
    valid_from "2014-09-01"
    valid_to "2015-09-01"
  end
end
