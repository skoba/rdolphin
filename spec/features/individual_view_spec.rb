feature 'Individual view' do
  context 'as individual person' do
    scenario 'view his/her own records list' do
      person = create :person
      visit mml_patient_path person

      expect(page).to have_title person.name
      expect(page).to have_content person.birthday
      expect(page).to have_content person.gender
    end
  end
end
