require 'rails_helper'

RSpec.describe Identifier, :type => :model do
  it 'is valid with issuer and identity' do
    expect(create :local_identifier).to be_valid
  end

  it 'is invalid without issuer' do
    expect(Identifier.new(identity: '123')).to have(1).error_on(:issuer)
  end

  it 'is invalid without identity' do
    expect(Identifier.new(issuer: 'Kyoto Hospital')).to have(1).error_on(:identity)
  end
end
