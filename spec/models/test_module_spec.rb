require 'spec_helper'
describe TestModule do
  let(:test_module) {create(:test_module)}

  it 'should be an instance of TestModule' do
    expect(test_module).to be_an_instance_of TestModule
  end

  it 'specimen is Blood' do
    expect(test_module.at0051).to eq 'Blood'
  end

  context 'repeat part cluster[at0060]' do
    it 'at0061_1 is t-bil' do
      expect(test_module.at0061_1).to eq 'T-Bil'
    end

    it '5 rms are under at0060' do
      expect(test_module.at0060.size).to eq 15
    end
  end
end
