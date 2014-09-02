# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :version do
    lifecycle_state "draft"
#    ehr nil
    uid "addafllddefdbeef0123"
  end
end
