RSpec.describe DvText, :type => :model do
  it {is_expected.to belong_to :composition}

  let(:dv_text) {build :dv_text}

  it 'is valid' do
    expect(dv_text).to be_valid
  end
end
