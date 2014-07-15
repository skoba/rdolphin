RSpec.describe DvText, :type => :model do
  it {is_expected.to belong_to :element}

  let(:dv_text) {build :dv_text}
 
  it 'is valid' do
    expect(dv_text).to be_valid
  end

  describe 'values' do
    subject { dv_text }

    it { is_expected.to respond_to 'value' }
    it { is_expected.to respond_to 'text_value' }
  end

  it 'txt value is assigned properly' do
    expect(dv_text.text_value).to eq 'headache'
  end

  it 'assigns shortcut to value for text_value' do
    expect(dv_text.value).to eq 'headache'
  end

  it 'is not valid without text_value' do
    dv_text.text_value = nil
    expect(dv_text).not_to be_valid
  end
end
