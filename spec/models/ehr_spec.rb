require 'rails_helper'

RSpec.describe Ehr, :type => :model do
  it {is_expected.to belong_to :party}

  let(:ehr) {build :ehr}

  it 'is valid' do
    expect(ehr).to be_valid
  end

  it 'system id is rdolphin' do
    expect(ehr.system_id).to eq 'rDolphin'
  end
end