FactoryGirl.define do
  factory :person, class: Person do
    meaning "PERSON"
    name 'Person name'

    after(:create) do |person|
      create :person_name, party: person
      create :local_identity, party: person
      create :regional_identity, party: person
      create :home_contact, party: person
      create :work_contact, party: person
      create :details_in_general, party: person
    end
  end

  factory :person_name, class: PartyIdentity do
    name "person name"
    purpose "legal name"
    association :party, factory: :person

    after(:create) do |party_identity|
      create :given_name, party_identity: party_identity
      create :family_name, party_identity: party_identity
    end
  end


  factory :given_name, class: IdentityDetail do
    name "given name"
    value 'Shinji'
    association :party_identity, factory: :person_name
  end
      
  factory :family_name, class: IdentityDetail do
    name "family name"
    value 'KOBAYASHI'
    association :party_identity, factory: :person_name
  end

  factory :local_identity, class: PartyIdentity do
    name 'local id'
    purpose 'Kyoto university hospital'
    association :party, factory: :person

    after(:create) do |party_identity|
      create :local_identifier, party_identity: party_identity
    end
  end

  factory :local_identifier, class: IdentityDetail do
    name 'id'
    value '012345'
    association :party_identity, factory: :local_identity
  end

  factory :regional_identity, class: PartyIdentity do
    name 'regional id'
    purpose 'Maiko network'
    association :party, factory: :person

    after(:create) do |party_identity|
      create :regional_identifier, party_identity: party_identity
    end
  end

  factory :regional_identifier, class: IdentityDetail do
    name 'maiko id'
    value 'abcdefg'
    association :party_identity, factory: :regional_identity
  end

  factory :home_contact, class: Contact do
    name 'HOME'
    purpose 'claim'
    valid_from '2013-10-01'
    valid_to '2014-09-03'
    association :party, factory: :person
    after(:create) do |contact|
      create :home_address, contact: contact
      create :home_phone, contact: contact
    end
  end

  factory :home_address, class: Address do
    meaning 'postal address'
    name 'apartment address'
    association :contact, factory: :home_contact
    after :create do |address|
      create :home_address_pref, address: address
      create :home_address_city, address: address
      create :home_address_town, address: address
      create :home_address_number, address: address
      create :home_zip, address: address
    end
  end

  factory :home_address_pref, class: AddressDetail do
    name 'prefecture'
    value 'Kyotofu'
    association :address, factory: :home_address
  end

  factory :home_address_city, class: AddressDetail do
    name 'city'
    value 'Kyoto'
    association :address, factory: :home_address
  end

  factory :home_address_town, class: AddressDetail do
    name 'town'
    value 'Chudo-ji'
    association :address, factory: :home_address
  end

  factory :home_address_number, class: AddressDetail do
    name 'home number'
    value '91'
    association :address, factory: :home_address
  end

  factory :home_zip, class: AddressDetail do
    name 'zip'
    value '600-8815'
    association :address, factory: :home_address
  end

  factory :home_phone, class: Address do
    meaning 'telecom address' 
    name 'phone'
    association :contact, factory: :home_contact
    after :create do |address|
      create :home_phone_area, address: address 
      create :home_phone_city, address: address 
      create :home_phone_number, address: address 
    end
  end

  factory :home_phone_area, class: AddressDetail do
    name 'area'
    value '075'
    association :address, factory: :home_phone
  end

  factory :home_phone_city, class: AddressDetail do
    name 'city'
    value '123'    
    association :address, factory: :home_phone
  end

  factory :home_phone_number, class: AddressDetail do
    name 'number'
    value '4567'
    association :address, factory: :home_phone
  end

  factory :work_contact, class: Contact do
    name 'Work'
    purpose 'second contact'
    association :party, factory: :person
    after :create do |contact|
      create :work_address, contact: contact
    end
  end

  factory :work_address, class: Address do
    name 'work'
    meaning 'postal address'
    association :contact, factory: :work_contact
    after :create do |address|
      create :work_address_full, address: address
    end
  end

  factory :work_address_full, class: AddressDetail do
    name 'full'
    value 'Shogoin Sakyoku, Kyoto city'
    association :address, factory: :home_phone
  end

  factory :details_in_general, class: PartyDetail do
    name 'general'
    purpose 'general description'
    association :party, factory: :person
    after :create do |detail|
      create :gender, party_detail: detail
      create :birthday, party_detail: detail
      create :gender, party_detail: detail
      create :nationality, party_detail: detail
      create :marital, party_detail: detail
    end
  end

  factory :gender, class: DetailItem do
    name 'gender'
    value 'male'
    association :party_detail, factory: :details_in_general
  end

  factory :birthday, class: DetailItem do
    name 'birthday'
    value '1990-01-01'
    association :party_detail, factory: :details_in_general
  end

  factory :nationality, class: DetailItem do
    name 'nationality'
    value 'Japan'
    association :party_detail, factory: :details_in_general
  end

  factory :marital, class: DetailItem do
    name 'marital'
    value 'no'
    association :party_detail, factory: :details_in_general
  end
end
