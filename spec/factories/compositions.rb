# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :composition do
    ehr nil
    uid "MyString"
    category "MyString"
    startTime "2014-06-13 02:05:42"
    archetype_id "MyString"
  end
end
