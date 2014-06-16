# -*- coding: utf-8 -*-
feature 'People browser' do
  scenario 'view people list' do
    person = create :person
    visit root_path
    expect(page).to have_content '登録者リスト'

    click_link '表示', person.id
    expect(page).to have_content 'ID'
  end
end
