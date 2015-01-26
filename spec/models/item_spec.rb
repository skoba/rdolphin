require 'rails_helper'

RSpec.describe Item, :type => :model do
  describe 'Item' do
    let(:item) {build :item}
    subject {item}

    it {is_expected.to be_valid}  
    it 'name is Test structure' do
      expect(item.name).to eq 'Test item'
    end
  end

  describe Cluster do
    let(:cluster) {create :cluster}
    subject {cluster}

    it {is_expected.to be_valid}

    it 'has subcluster and element' do
      expect(cluster.items.size).to eq 2
    end
  end
end
