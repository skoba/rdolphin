require 'rails_helper'

RSpec.describe Content, :type => :model do
  let(:content) { build :content}
  subject {content}

  it {is_expected.to be_valid}

  it 'name is root' do
    expect(content.name).to eq 'root'
  end

  let(:entry) {build :entry}

  
end
