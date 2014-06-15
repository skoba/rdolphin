require 'rails_helper'

RSpec.describe EhrsController, :type => :controller do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end

    it 'assigns all EHRs' do
      ehr = create :ehr
      get :index
      expect(assigns(:ehrs)).to match_array [ehr]
    end
  end

  describe "GET 'show'" do
    let(:ehr) { create :ehr }

    before(:each) { get 'show', id: ehr }
    it "returns http success" do
      expect(response).to be_success
    end

    it 'assigns requested ehr to @ehr' do
      expect(assigns(:ehr)).to eq ehr
    end
  end
end
