require 'factory_girl_rails'
require 'ffaker'

#Dir[Rails.root.join('spec/factories/*.rb')].each {|f| require f }
Identifier.delete_all
Address.delete_all
Telecom.delete_all
Person.delete_all
Ehr.delete_all
Composition.delete_all
ContentItem.delete_all

FactoryGirl.define do
  factory :dummy_identifier, class: Identifier do
    issuer { ["A Hospital", "B distinct", "C organization"].sample }
    identity { Faker::Identification.ssn }
  end
end


FactoryGirl.define do
  factory :dummy_address, class: Address do
    post_code { Faker::AddressUK.postcode }
    address_type "HOME"
    prefecture { %w(Kyoto Miyazaki Tokyo Okinawa).sample }
    city { Faker::Address.city }
    town { Faker::Address.street_address }
    valid_from { Faker::Time.date(year_range: 10)[0,10] }
  end
end

FactoryGirl.define do
  factory :dummy_telecom, class: Telecom do
    telecom_type 'HOME'
    unstructured { Faker::PhoneNumber.short_phone_number }
  end
end

FactoryGirl.define do
  factory :systolic_blood_pressure, class: ContentItem do
    rm_type_name "DV_QUANTITY"
    archetype_id "openEHR-EHR-OBSERVATION.blood_pressure.v1"
    name "Systolic blood pressure"
    path "/content[openEHR-EHR-SECTION.vital_signs.v1]/items[openEHR-EHR-OBSERVATION.blood_pressure.v1]/data[at0001]/events[at0006]/data[at0003]/items[at0004]"
    node_id "at0004"
    num_value { rand(100..200)}
  end
end

FactoryGirl.define do
  factory :diastolic_blood_pressure, class: ContentItem do
    rm_type_name "DV_QUANTITY"
    archetype_id "openEHR-EHR-OBSERVATION.blood_pressure.v1"
    name "Diastolic blood pressure"
    path "/content[openEHR-EHR-SECTION.vital_signs.v1]/items[openEHR-EHR-OBSERVATION.blood_pressure.v1]/data[at0001]/events[at0006]/data[at0003]/items[at0005]"
    node_id "at0005"
    num_value { rand(40..99) }
  end
end

FactoryGirl.define do
  factory :pulse_rate, class: ContentItem do
    rm_type_name "DV_QUANTITY"
    archetype_id "openEHR-EHR-OBSERVATION.pulse.v1"
    name "Pulse rate"
    path "/content[openEHR-EHR-SECTION.vital_signs.v1]/items[openEHR-EHR-OBSERVATION.pulse.v1]/data[at0002]/events[at0003]/data[at0001]/items[at0004]"
    node_id "at0004"
    num_value { rand(50..120) }
  end
end

FactoryGirl.define do
  factory :vitalsign_composition, class: VitalSignComposition do
    uid { SecureRandom.uuid }
    category "persistent"
    start_time "2014-06-13 02:05:42"
    archetype_id "openEHR-EHR-COMPOSITION-vital_sign.v1"
    after(:create) do |vs|
      vs.content_items << create(:systolic_blood_pressure)
      vs.content_items << create(:diastolic_blood_pressure)
      vs.content_items << create(:pulse_rate)
    end
  end
end

FactoryGirl.define do
  factory :dummy_ehr, class: Ehr do
    ehr_id { SecureRandom.uuid }
    queryable true
    modifiable false
    after(:create) do |ehr|
      100.times do
        ehr.compositions << create(:vitalsign_composition, ehr: ehr)
      end
    end
  end
end

FactoryGirl.define do
  factory :dummy_person, class: Person do
    family_name { Faker::NameJA.last_name }
    given_name { Faker::NameJA.first_name }
    date_of_birth { Faker::Time.date(year_range: 100)[0,10] }
    gender { Faker::Identification.gender }
    after(:create) do |dummy_person|
      dummy_person.addresses << build(:dummy_address, person: dummy_person)
      dummy_person.identifiers << build(:dummy_identifier, person: dummy_person)
      dummy_person.telecoms << build(:dummy_telecom, person: dummy_person)
      dummy_person.ehrs << create(:dummy_ehr, person: dummy_person)
    end
  end
end

100.times do
  FactoryGirl.create :dummy_person
end
