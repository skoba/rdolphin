require 'spec_helper'

describe OpenEhrEhrClusterMmlNameV1 do
  let(:cluster) { OpenEhrEhrClusterMmlNameV1.new }

  it 'is an instance of OpenEhrEhrClusterMmlNameV1' do
    expect(cluster).to be_an_instance_of OpenEhrEhrClusterMmlNameV1
  end

  it 'at0001 should be present' do
    cluster.at0001 = ''
    expect(cluster).not_to be_valid
  end
end
