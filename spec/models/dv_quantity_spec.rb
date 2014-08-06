describe DvQuantity do
  let(:dv_quantity) {build :dv_quantity}
  subject {dv_quantity}

  it {is_expected.to be_valid}

  it 'value is alias of decimal_value' do
    expect(dv_quantity.value).to eq 23.41
  end

  it 'magnitide is alias of decimal_value' do
    expect(dv_quantity.value).to eq 23.41
  end
end
