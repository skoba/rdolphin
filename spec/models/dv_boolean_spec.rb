RSpec.describe DvBoolean, :type => :model do
  it {is_expected.to belong_to :element}

  let(:dv_boolean) {build :dv_boolean}
 
  it 'is valid' do
    dv_boolean.bool_value = true
    expect(dv_boolean).to be_valid
  end

  describe 'values' do
    subject { dv_boolean }

    it { is_expected.to respond_to 'bool_value' }
    it { is_expected.to respond_to 'value' }
  end

  it 'value is assigned properly' do
    expect(dv_boolean.bool_value).to be_falsy
  end

  it 'assigns shortcut to value for value' do
    expect(dv_boolean.value).to eq false
  end

  it 'is not valid without bool_value' do
    dv_boolean.bool_value = nil
    expect(dv_boolean).not_to be_valid
  end
end
