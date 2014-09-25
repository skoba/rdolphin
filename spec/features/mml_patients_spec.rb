# -*- coding: utf-8 -*-
feature 'patients list view' do
  background do
    create_list :person, 10
  end

  scenario 'visit root path' do
    visit root_path

    expect(current_path).to eq root_path
    expect(page).to have_title 'rDolphin - Patient list'
    expect(page).to have_content 'List - MML Patient Module'
    expect(page).to have_content 'ID'
    expect(page).to have_content "姓"
    expect(page).to have_content "名"
    expect(page).to have_content "生年月日"
    expect(page).to have_content "性別"
  end
end
