RSpec.describe Ehr, :type => :model do

  it 'is not valid when uid is duplicated' do
  	EHR.create(uid: '12345')
  	expect(EHR.new(uid: '12345')).not_to be_valid
  end
end
