describe DvDateTime do
  let(:dv_date_time) {build :dv_date_time}
  subject {dv_date_time}

  it {is_expected.to be_valid}

  it 'value is alias to date_value' do
    expect(dv_date_time.value).to eq Time.parse('2014-08-09T15:14:30Z')
  end

  it {is_expected.to validate_presence_of :date_time_value}
end
