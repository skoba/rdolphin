feature 'MML Lab tests' do
  scenario 'list lab tests' do
    visit mml_lab_tests_path

    expect(page).to have_title 'MML Lab test result'
  end
end
