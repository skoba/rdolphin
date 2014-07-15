require 'rails_helper'

RSpec.describe ItemStructure, :type => :model do
  let(:item_structure) {build :item_structure}
  subject {item_structure}

  it {is_expected.to belong_to :item}

  context '#name' do
    subject {item_structure.name}

    it {is_expected.to eq 'Item Structure'}
  end
end
