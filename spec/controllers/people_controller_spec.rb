RSpec.describe PeopleController, :type => :controller do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end

    it 'assigns all the relations of people to @people'

    it 'renders index template'
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      expect(response).to be_success
    end

    it 'assigns requested person to @person'
  end

end
