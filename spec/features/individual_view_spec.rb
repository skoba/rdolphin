feature 'Individual view' do
  context 'as individual person' do
    scenario 'view his/her own records list' do
      person = create :person
      visit mml_patient_path person

      expect(page).to have_title person.name
    end
  end
end
