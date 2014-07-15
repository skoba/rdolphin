RSpec.describe DvQuantity, type: :model do
  it {is_expected.to belong_to :element}

  let(:dv_quantity) {build :dv_quantity}

  it 'is valid insntance' do
    expect(dv_quantity).to be_valid
  end

  it 'num_value is assigned properly' do
    expect(dv_quantity.num_value).to eq 120
  end

  it 'unit is mmHg' do
    expect(dv_quantity.unit).to eq 'mmHg'
  end

  it 'is invalid without num_value' do
    dv_quantity.num_value = nil
    expect(dv_quantity).not_to be_valid
  end

  it 'assigns magnitude to shortcut for num_value' do
    expect(dv_quantity.magnitude).to eq 120
  end
end
