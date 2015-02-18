require 'rails_helper'

RSpec.describe CompositionsController, type: :controller do
  describe 'GET #index' do
    it 'populates an array of all compositions' do
      composition = create :composition
      lab_test = create :lab_test
      prescription = create :prescription
      get :index
      expect(assigns(:compositions)).to match_array [composition, lab_test, prescription]
    end
  end

  describe 'GET #show' do
    it 'assigns the requested composition to @composition'
  end

  describe 'Versioning' do
    describe 'assigns the latest composition as default' do
      it 'populates an array of all the latest compositions'
    end
  end
end
