RSpec.describe DvDate, type: :model do
  it {is_expected.to belong_to :composition}

  let(:dv_date) {build :dv_date}

  it 'is valid insntance' do
    expect(dv_date).to be_valid
  end

  it 'num_value is assigned properly' do
    expect(dv_date.date_value).to eq Date.parse('2014-07-01')
  end

  it 'is invalid without num_value' do
    dv_date.date_value = nil
    expect(dv_date).not_to be_valid
  end

  it 'assigns magnitude to shortcut for num_value' do
    expect(dv_date.value).to eq Date.parse('2014-07-01')
  end
end
