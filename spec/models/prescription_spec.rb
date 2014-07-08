RSpec.describe Prescription, :type => :model do
  let(:prescription) { create :prescription }

  it 'prescription has two orders' do
    expect(prescription.orders.count).to be 2
  end
end
