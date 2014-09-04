require 'rails_helper'

RSpec.describe Version, :type => :model do
  it {is_expected.to belong_to :ehr}
end
