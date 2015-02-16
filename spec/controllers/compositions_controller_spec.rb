require 'rails_helper'

RSpec.describe CompositionsController, type: :controller do
  describe 'GET #index' do
    it 'populates an array of all compositions'
  end

  describe 'GET #show' do
    it 'assignes the requested composition to @composition'
  end
end
