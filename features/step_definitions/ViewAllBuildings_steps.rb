
Then("I expect to see the View Buildings button") do
  expect(page).to have_link("/view_buildings")
end

Then("I should see a list containing all the information of all the buildings") do
  expect(page).to have_content("CONDITION")
end