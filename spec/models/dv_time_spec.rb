RSpec.describe DvTime, type: :model do
  it {is_expected.to belong_to :element}

  let(:dv_time) {build :dv_time}
  subject {dv_time}

  it {is_expected.to be_valid}

  it 'num_value is assigned properly' do
    expect(dv_time.time_value.to_s(:db)).to eq '2000-01-01 12:34:56'
  end

  it 'is invalid without time_value' do
    dv_time.time_value = nil
    expect(dv_time).not_to be_valid
  end

  it 'assigns value to shortcut for time_value' do
    expect(dv_time.value.to_s(:db)).to eq '2000-01-01 12:34:56'
  end
end
