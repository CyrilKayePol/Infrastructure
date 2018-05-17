
Then /^(?:|I )should see an (.+) button on Dashboard page$/ do |string|
  visit('/dashboard')
  page.should have_selector(:link_or_button, string)
end

Then ("I should see my own profile information") do
	user = User.find_by(email: 'taylor@up.edu.ph')
    within('form.profile') do
		expect(find_field('first_name').value).to eq user.first_name
		expect(find_field('last_name').value).to eq user.last_name
		expect(find_field('mobile_number').value).to eq user.mobile_number
		expect(find_field('month').value).to eq user.birthday.strftime("%B")
		expect(find_field('day').value).to eq user.birthday.strftime("%d")
		expect(find_field('year').value).to eq user.birthday.strftime("%Y")
		expect(find_field('gender').value).to eq user.gender
		expect(find_field('religion').value).to eq user.religion
	end
end
