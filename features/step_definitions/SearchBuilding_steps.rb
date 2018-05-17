When("I fill in the search bar with {string}") do |string|
  building = Building.create!(:name => "Student Lounge", :date_built => '2006', :condition => "Usable")
  within('form.row.text-center#searchie') do
  	fill_in 'search_field', with: string

  end
end

When("I press the search button") do
  click_button 'Search'
end

Then("the list will display only the information of {string}") do |string|
  # find('tr', text: string).should have_content string
  expect(page).to have_content("Student Lounge")
end