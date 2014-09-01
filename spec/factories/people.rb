FactoryGirl.define do
  factory :person, class: Person do
    meaning "PERSON"
    name 'Person name'

    after(:create) do |person|
      create :person_name, party: person
      create :local_identity, party: person
      create :regional_identity, party: person
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
  end

  factory :home_address, class: Address do
    
  end
end
