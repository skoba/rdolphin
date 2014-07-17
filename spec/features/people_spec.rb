# -*- coding: utf-8 -*-
feature 'People browser' do
  background do
    @person = create :person
  end

  scenario 'view people list' do
    visit root_path
    expect(page).to have_content @person.id
    expect(page).to have_content @person.given_name
    expect(page).to have_content @person.family_name
    expect(page).to have_content @person.date_of_birth
    expect(page).to have_content @person.gender
    expect(page).to have_link '表示', href: person_path(@person)
  end

  scenario 'individual personal view' do
    visit root_path
    click_link '表示', href: person_path(@person)
    expect(page).to have_content @person.ehr.compositions.first.name
    
  end
end
