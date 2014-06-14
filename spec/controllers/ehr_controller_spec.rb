RSpec.describe EhrController, :type => :controller do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end

    it 'renders the :index template'

    it 'populates an array of ehrs in the repository '
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      expect(response).to be_success
    end

    it 'assigns the requested composition to @ehr'
    it 'renders the :show template'
  end
end
