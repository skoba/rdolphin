RSpec.describe DvText, :type => :model do
  it {is_expected.to belong_to :composition}

  let(:dv_text) {build :dv_text}

  it 'is valid' do
    expect(dv_text).to be_valid
  end

  it 'txt value is assigned properly' do
    expect(dv_text.txt_value).to eq 'headache'
  end

  it 'assigns shortcut to value for txt_value' do
    expect(dv_text.value).to eq 'headache'
  end

  it 'is not valid without txt_value' do
    dv_text.txt_value = nil
    expect(dv_text).not_to be_valid
  end
end
