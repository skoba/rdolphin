require 'rails_helper'

RSpec.describe Language, type: :model do
  let(:en) { build :en }

  specify 'code is en' do
    expect(en.code).to eq 'en'
  end

  specify 'description is English' do
    expect(en.description).to eq 'English'
  end

  context 'validation to mandatory fields' do
    it 'code is mandatory' do
      en.code =  nil
      en.valid?
      expect(en.errors[:code]).to include "can't be blank"
    end

    it 'description is mandatory' do
      en.description = nil
      en.valid?
      expect(en.errors[:description]).to include "can't be blank"
    end
  end
end
