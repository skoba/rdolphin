require 'rails_helper'

RSpec.describe IdentityDetail, :type => :model do
  it {is_expected.to belong_to :party_identity}
end
