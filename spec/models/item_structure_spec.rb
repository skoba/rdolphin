require 'rails_helper'

RSpec.describe ItemStructure, :type => :model do
  describe 'ItemStructure' do
    let(:item_structure) {build :item_structure}
    subject {item_structure}

    it {is_expected.to be_valid}  
    it 'name is Test structure' do
      expect(item_structure.name).to eq 'Test structure'
    end
  end

  describe Element do
    let(:element) {build :element}
    subject {element}

    it {is_expected.to be_valid}

    context 'association' do
      it {is_expected.to have_one :data_value}
    end
  end
end
