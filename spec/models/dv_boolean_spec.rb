describe DvBoolean do
  let(:dv_boolean) {build :dv_boolean}
  subject {dv_boolean}

  it {is_expected.to be_valid}

  it 'value is an alias of text_value' do
    expect(dv_boolean.value).to eq true
  end
end
