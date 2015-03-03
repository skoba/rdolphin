require 'rails_helper'

RSpec.describe Component, type: :model do
  let(:component) { build :component }
  subject { component }

  it { is_expected.to be_valid }
end
