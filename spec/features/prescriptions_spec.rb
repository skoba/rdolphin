# -*- coding: utf-8 -*-
feature 'Prescriptions browser' do
  scenario 'Prescriptions list' do
    create :prescription
    visit prescriptions_index_path
    expect(page).to have_content '処方一覧'
  end
end
