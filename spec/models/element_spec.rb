describe Element, :type => :model do
  subject {build Element}

  it {is_expected.to belong_to :item}
  it {is_expected.to have_one :data_value}
end
