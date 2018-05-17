And /the following buildings exist/ do |b_table|
  b_table.hashes.each do |b|
	Building.create b
  end
end

Then("I should see each building's condition") do
  find('tr', text: "Ladies' Dorm").should have_content('Usable')
  find('tr', text: "Men's Dorm").should have_content('Unusable')
  find('tr', text: "Swimming Pool").should have_content('Imaginary')
end