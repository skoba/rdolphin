FactoryGirl.define do
  factory :person do
    first_name "Shinji"
    given_name "KOBAYASHI"
    unstructured_name "Shinji KOBAYASHI"
    date_of_birth "1970-04-19"
    gender "Male"
    prefix "Dr"
    after(:build) do |person|
      person.addresses << build(:address)
      [:local_identifier, :maiko_identifier].each do |identifier|
        person.identifiers << build(identifier)
      end
      [:home_telecom, :business_telecom, :mobile_telecom].each do |telecom|
        person.telecoms << build(telecom)
      end
    end
  end
end
