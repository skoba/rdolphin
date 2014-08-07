describe DvDate do
  let(:dv_date) {build :dv_date}
  subject {dv_date}

  it {is_expected.to be_valid}

  it 'value is alias to date_value' do
    expect(dv_date.value).to eq Date.parse('2014-08-09')
  end
end
