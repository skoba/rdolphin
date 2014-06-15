RSpec.describe PeopleController, :type => :controller do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end

    it 'assigns all the relations' do
      person = create :person
      get :index
      expect(assigns(:people)).to match_array([person])
    end

    it 'renders index template' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET 'show'" do
    let (:person) { create :person }

    it "returns http success" do
      get 'show', id: person
      expect(response).to be_success
    end

    it 'assigns requested person to @person' do
      get :show, id: person
      expect(assigns(:person)).to eq person
    end
  end
end
