And /^(?:|I )am logged in as (.+) with email (.+)$/ do |name, email|
	emailAdd= email
	visit path_to('/profile_information')
	within('form') do
		expect(find_field('name').value).to eq name
	end

end

Then /^(?:|I )should see an (.+) button on Profile Information page$/ do |string|
  visit('/profile_information')
  page.should have_selector(:link_or_button, string)
end

Then ("I should see my own account information") do
	
    within('form.account_settings') do
		expect(find_field('emailAdd').value).to eq 'taylor@up.edu.ph'
		expect(find_field('passwd').value).to eq 'swift'
	end
end