#Given("that I am on the {string} page") do |string|
#  visit path_to(string)
#end

#When("I click on the {string} label") do |string|
#  click_on string
#end

#Then("I should still be on the {string} page") do |string|
#  pending # Write code here that turns the phrase above into concrete actions
#end

Then("the list should be sorted alphabetically according to the name of the building") do
  expect(page).to have_current_path(view_buildings_path(sorter: 'name'))
end

Given("that I am on the View Buildings page") do
  visit '/view_buildings'
end

Then("I should still be on the View Buildings page") do
  expect(page).to have_content("CONDITION")
end

Then("the list should be sorted chronologically according to the date the building was built") do
  expect(page).to have_current_path(view_buildings_path(sorter: 'date'))
end

When("I click on the Name of Building label") do
  find('tr', text: "NAME OF BUILDING").click_link("NAME OF BUILDING")
end

When("I click on the Date Built label") do
  find('tr', text: "DATE BUILT").click_link("DATE BUILT")
end