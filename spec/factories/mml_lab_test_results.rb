FactoryGirl.define do
  factory :lab_result do
    decimal_value Random.rand(10...1000)
    unit %w{IU/l /microl mg/dl}.sample
  end
end
