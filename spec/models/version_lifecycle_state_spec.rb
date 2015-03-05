require 'rails_helper'

RSpec.describe VersionLifecycleState, type: :model do
  let(:state) { build :version_lifecycle_state }
 
  it 'life cycle state is valid record' do
    expect(state).to be_valid
  end

  describe 'id 532 is "complete"' do
    it 'id is 532' do
      expect(state.conceptid).to eq 532
    end

    it 'rubric is "complete"' do
      expect(state.rubric).to eq 'complete'
    end
  end
end
