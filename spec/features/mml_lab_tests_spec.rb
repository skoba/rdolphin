feature 'MML Lab tests' do
  scenario 'list of lab test' do
    visit mml_lab_tests_path

    expect(page).to have_title 'MML Lab test result'
    expect(page).to have_content 'Date'
  end
end
