require 'rails_helper'

RSpec.describe DataValue, :type => :model do
  it {is_expected.to belong_to :element}
  it {is_expected.to respond_to :value}
end
