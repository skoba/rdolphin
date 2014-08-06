FactoryGirl.define do
  factory :data_value do
    bool_value true
    text_value "Sample data"
    int_value 1234
    real_value 567.89
    decimal_value 10.001
    date_value "2014-08-06"
    date_time_value "2014-08-06T12:13:33"
    code "C089"
    element
  end
end
