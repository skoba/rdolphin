# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :data_value do
    rm_type_name "MyString"
    element nil
    text_value "MyString"
    bool_value false
    code "MyString"
    num_value 1.5
    int_value 1
    date_value "2014-07-15"
    time_value "2014-07-15 23:19:44"
    datetime_value "2014-07-15 23:19:44"
    code "MyString"
    unit "MyString"
  end
end
