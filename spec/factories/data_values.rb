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

  factory :dv_boolean do
    bool_value true
    element
  end

  factory :dv_text do
    text_value "Sample text data"
    element
  end

  factory :dv_quantity do
    decimal_value 23.41
    element
  end

  factory :dv_date do
    date_value '2014-08-09'
  end

  factory :dv_date_time do
    date_time_value '2014-08-09T15:14:30Z'
  end
end
