# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :local_identifier, class: Identifier do
    issuer "Kyoto university hospital"
    identity "1234567890"
  end

  factory :maiko_identifier, class: Identifier  do
    issuer "JMNA"
    identity "10ABCDED"
  end
end
