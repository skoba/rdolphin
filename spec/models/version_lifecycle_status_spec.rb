require 'rails_helper'

RSpec.describe VersionLifecycleStatus, type: :model do
  let(:status) { build :version_lifecycle_status }
 
  it 'life cycle state is valid record' do
    expect(status).to be_valid
  end

  describe 'id 532 is "complete"' do
    it 'id is 532' do
      expect(status.conceptid).to eq 532
    end

    it 'rubric is "complete"' do
      expect(status.rubric).to eq 'complete'
    end
  end
end
