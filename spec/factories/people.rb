FactoryGirl.define do
  factory :person do
    given_name "Shinji"
    family_name "KOBAYASHI"
    unstructured_name "Shinji KOBAYASHI"
    date_of_birth "1970-04-19"
    gender "Male"
    prefix "Dr"
    after(:create) do |person|
      person.addresses << create(:address)
      [:local_identifier, :maiko_identifier].each do |identifier|
        person.identifiers << create(identifier)
      end
      [:home_telecom, :business_telecom, :mobile_telecom].each do |telecom|
        person.telecoms << create(telecom)
      end
      person.ehr = create(:concrete_ehr)
    end
  end
end
