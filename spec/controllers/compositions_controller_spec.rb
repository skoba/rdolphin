RSpec.describe CompositionsController, :type => :controller do
    describe "GET 'show'" do
    it "returns http success" do
      person = create :person
      get :show, person_id: person.id, id: person.compositions.first.id
      expect(response).to be_success
    end
  end

end
