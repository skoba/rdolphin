RSpec.describe DvDateTime, type: :model do
  it {is_expected.to belong_to :element}

  let(:dv_date_time) {build :dv_date_time}
  subject {dv_date_time}

  it {is_expected.to be_valid}

  it 'num_value is assigned properly' do
    expect(dv_date_time.datetime_value).to eq DateTime.parse('2014-07-15T12:34:56')
  end

  it 'is invalid without datetime_value' do
    dv_date_time.datetime_value = nil
    expect(dv_date_time).not_to be_valid
  end

  it 'assigns value to shortcut for datetime_value' do
    expect(dv_date_time.value).to eq DateTime.parse('2014-07-15T12:34:56')
  end
end
