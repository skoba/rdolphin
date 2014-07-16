require 'rails_helper'

RSpec.describe Person, :type => :model do
  it {is_expected.to have_one :ehr }
  let(:person) {create :person}

  it 'is valid with all' do
    expect(person).to be_valid
  end

  it 'is invalid without first_name' do
    person.family_name = nil
    expect(person).to have(1).error_on(:family_name)
  end

  it 'is invalid without given_name' do
    person.given_name = nil
    expect(person).to have(1).error_on(:given_name)
  end

  it 'is invalid without date_of_birth' do
    person.date_of_birth = nil
    expect(person).to have(1).error_on(:date_of_birth)
  end

  it 'is invalid without gender' do
    person.gender = nil
    expect(person).to have(1).error_on(:gender)
  end

  it 'is associated with addresses' do
    expect(person.addresses).to have(1).item
  end

  it 'is associated with identifiers' do
    expect(person.identifiers).to have(2).items    
  end

  it 'is associated with telecoms' do
    expect(person.telecoms).to have(3).items
  end

  it 'has one composition through ehr' do
    expect(person).to have(1).composition
  end
end
