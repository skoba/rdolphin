require 'rails_helper'

RSpec.describe ComponentProxy, type: :model do
  it { is_expected.to have_many :components }
end
