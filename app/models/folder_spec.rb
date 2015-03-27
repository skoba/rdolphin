require 'rails_helper'

Rspec.describe Component, type: :model do
  it { is_expected.to have_many :component_proxies }
end
