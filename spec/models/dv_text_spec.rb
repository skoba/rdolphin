describe DvText do
  let(:dv_text) {build :dv_text}
  subject {dv_text}

  it {is_expected.to be_valid}

  it 'value is an alias of text_value' do
    expect(dv_text.value).to eq 'Sample text data'
  end
end
