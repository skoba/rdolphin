RSpec.describe Telecom, :type => :model do
  it 'is valid with type' do
    expect(create :telecom).to be_valid
  end

  it 'is not valid without type' do
    expect(Telecom.new(telecom_type: nil)).to have(1).error_on(:telecom_type)
  end
end
