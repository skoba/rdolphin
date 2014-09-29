require 'rails_helper'

RSpec.describe ContentItem, :type => :model do
  it {is_expected.to belong_to :composition}
  it {is_expected.to have_many :items}

  let(:content_item) {build :content_item}

  specify 'name' do
    expect(content_item.name).to eq 'Laboratory test'
  end

  specify 'nodeid' do
    expect(content_item.nodeid).to eq 'at0004'
  end

  specify 'archetypeid' do
    expect(content_item.archetypeid).to eq "openEHR-EHR-OBSERVATION.lab_test.v1"
  end

  specify 'rm_type' do
    expect(content_item.rm_type).to eq "OBSERVATION"
  end

  specify 'path' do
    expect(content_item.path).to eq "/content[at0002]/value"
  end
end
