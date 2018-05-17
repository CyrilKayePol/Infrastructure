
When("I click {string} button") do |string|
 click_link 'ADD BUILDING'
end

When("I fill the {string} with {string} {string} {string}") do |string, string2, string3, string4|
  
  fill_in("month", :with => string2)
  fill_in("day", :with => string3)
  fill_in("year", :with => string4)
  
end

When("I press {string}") do |string|
  click_button("ADD")
end

Then("I should still be on the Building Options page") do
  visit path_to('/add_building')
end

Then("I should see {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end