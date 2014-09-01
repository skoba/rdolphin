require 'rails_helper'

RSpec.describe DetailItem, :type => :model do
  it {is_expected.to belong_to :party_detail}
end
