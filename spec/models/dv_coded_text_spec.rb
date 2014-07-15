RSpec.describe DvCodedText, :type => :model do
  it {is_expected.to belong_to :element}

  let(:dv_coded_text) {build :dv_coded_text}
 
  it 'is valid' do
    expect(dv_coded_text).to be_valid
  end

  describe 'values' do
    subject { dv_coded_text }

    it { is_expected.to respond_to 'code' }
    it { is_expected.to respond_to 'text_value' }
    it { is_expected.to respond_to 'value' }
  end

  it 'txt value is assigned properly' do
    expect(dv_coded_text.text_value).to eq 'standing'
  end

  it 'assigns shortcut to value for text_value' do
    expect(dv_coded_text.value).to eq 'standing'
  end

  it 'is not valid without code' do
    dv_coded_text.code = nil
    expect(dv_coded_text).not_to be_valid
  end
end
