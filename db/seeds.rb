require 'factory_girl_rails'
require 'ffaker'

FactoryGirl.define do
  factory :dummy_person, class: Person do
    meaning "PERSON"
    name 'Person name'

    after(:create) do |person|
      create :dummy_person_name, party: person
      create :dummy_local_identity, party: person
      create :dummy_regional_identity, party: person
      create :dummy_home_contact, party: person
      create :dummy_work_contact, party: person
      create :dummy_details_in_general, party: person
      create :dummy_ehr, person: person
    end
  end

  factory :dummy_person_name, class: PartyIdentity do
    name "person name"
    purpose "legal name"
    association :party, factory: :dummy_person

    after(:create) do |party_identity|
      create :dummy_given_name, party_identity: party_identity
      create :dummy_family_name, party_identity: party_identity
    end
  end


  factory :dummy_given_name, class: IdentityDetail do
    name "given name"
    value {Faker::NameJA.first_name}
    association :party_identity, factory: :dummy_person_name
  end
      
  factory :dummy_family_name, class: IdentityDetail do
    name "family name"
    value {Faker::NameJA.last_name}
    association :party_identity, factory: :dummy_person_name
  end

  factory :dummy_local_identity, class: PartyIdentity do
    name 'local id'
    purpose 'Kyoto university hospital'
    association :party, factory: :dummy_person

    after(:create) do |party_identity|
      create :dummy_local_identifier, party_identity: party_identity
    end
  end

  factory :dummy_local_identifier, class: IdentityDetail do
    name 'id'
    value {Faker::Identification.ssn}
    association :party_identity, factory: :dummy_local_identity
  end

  factory :dummy_regional_identity, class: PartyIdentity do
    name 'regional id'
    purpose 'Maiko network'
    association :party, factory: :dummy_person

    after(:create) do |party_identity|
      create :dummy_regional_identifier, party_identity: party_identity
    end
  end

  factory :dummy_regional_identifier, class: IdentityDetail do
    name 'maiko id'
    value {Faker::Identification.ssn}
    association :party_identity, factory: :dummy_regional_identity
  end

  factory :dummy_home_contact, class: Contact do
    name 'HOME'
    purpose 'claim'
    valid_from {Faker::Time.date}
    valid_to {Faker::Time.date}
    association :party, factory: :dummy_person
    after(:create) do |contact|
      create :dummy_home_address, contact: contact
      create :dummy_home_phone, contact: contact
    end
  end

  factory :dummy_home_address, class: Address do
    meaning 'postal address'
    name 'apartment address'
    association :contact, factory: :dummy_home_contact
    after :create do |address|
      create :dummy_home_address_pref, address: address
      create :dummy_home_address_city, address: address
      create :dummy_home_address_town, address: address
      create :dummy_home_address_number, address: address
      create :dummy_home_zip, address: address
    end
  end

  factory :dummy_home_address_pref, class: AddressDetail do
    name 'prefecture'
    value {Faker::AddressUS.state}
    association :address, factory: :dummy_home_address
  end

  factory :dummy_home_address_city, class: AddressDetail do
    name 'city'
    value {Faker::Address.city}
    association :address, factory: :dummy_home_address
  end

  factory :dummy_home_address_town, class: AddressDetail do
    name 'town'
    value {Faker::Address.street_name}
    association :address, factory: :dummy_home_address
  end

  factory :dummy_home_address_number, class: AddressDetail do
    name 'home number'
    value {Faker::Address.street_address}
    association :address, factory: :dummy_home_address
  end

  factory :dummy_home_zip, class: AddressDetail do
    name 'zip'
    value {Faker::AddressUS.zip_code}
    association :address, factory: :dummy_home_address
  end

  factory :dummy_home_phone, class: Address do
    meaning 'telecom address' 
    name 'phone'
    association :contact, factory: :dummy_home_contact
    after :create do |address|
      create :dummy_home_phone_area, address: address 
      create :dummy_home_phone_city, address: address 
      create :dummy_home_phone_number, address: address 
    end
  end

  factory :dummy_home_phone_area, class: AddressDetail do
    name 'area'
    value {Faker::PhoneNumber.short_phone_number}
    association :address, factory: :dummy_home_phone
  end

  factory :dummy_home_phone_city, class: AddressDetail do
    name 'city'
    value {Faker::PhoneNumber.short_phone_number}    
    association :address, factory: :dummy_home_phone
  end

  factory :dummy_home_phone_number, class: AddressDetail do
    name 'number'
    value {Faker::PhoneNumber.short_phone_number}
    association :address, factory: :dummy_home_phone
  end

  factory :dummy_work_contact, class: Contact do
    name 'Work'
    purpose 'second contact'
    association :party, factory: :dummy_person
    after :create do |contact|
      create :dummy_work_address, contact: contact
    end
  end

  factory :dummy_work_address, class: Address do
    name 'work'
    meaning 'postal address'
    association :contact, factory: :dummy_work_contact
    after :create do |address|
      create :dummy_work_address_full, address: address
    end
  end

  factory :dummy_work_address_full, class: AddressDetail do
    name 'full'
    value {Faker::Address.street_address}
    association :address, factory: :dummy_home_phone
  end

  factory :dummy_details_in_general, class: PartyDetail do
    name 'general'
    purpose 'general description'
    association :party, factory: :dummy_person
    after :create do |detail|
      create :dummy_gender, party_detail: detail
      create :dummy_birthday, party_detail: detail
      create :dummy_gender, party_detail: detail
      create :dummy_nationality, party_detail: detail
    end
  end

  factory :dummy_gender, class: DetailItem do
    name 'gender'
    value {Faker::Identification.gender}
    association :party_detail, factory: :dummy_details_in_general
  end

  factory :dummy_birthday, class: DetailItem do
    name 'birthday'
    value {Faker::Time.date}
    association :party_detail, factory: :dummy_details_in_general
  end

  factory :dummy_nationality, class: DetailItem do
    name 'nationality'
    value {Faker::Address.country}
    association :party_detail, factory: :dummy_details_in_general
  end

  factory :dummy_ehr, class: Ehr do
    system_id 'rDolphin'
    after(:create) do |ehr|
      10.times { create :dummy_composition, ehr: ehr}
    end
  end

  factory :dummy_composition, class: Composition do
    category "persistent"
    name {['MML Lab test', 'MML Report', 'MML Summary'].sample}
    nodeid 'at0000'
    uid {SecureRandom.uuid}
    archetypeid 'openEHR-EHR-COMPOSITION.report.v1'
#    templateid 'MML Lab Test'
    rm_version '1.0.2'
  end
end

100.times do
  FactoryGirl.create :dummy_person
end
