
require 'capybara/cucumber'

When /^(?:|I )login with email:(.+) password:(.+)$/ do |email, passwd|
	user = User.create!(:email => 'taylor@up.edu.ph', :password => 'swift', :first_name => 'Taylor', :last_name => 'Swift', :birthday => '04/11/2018', :religion => 'religion', :gender => 1, :mobile_number => '09123456789')
	
	within('form') do
		fill_in 'emailadd', with: email
		fill_in 'passwd', with: passwd
		expect(find_field('emailadd').value).to eq email
		expect(find_field('passwd').value).to eq passwd
		
	end
	click_button 'Sign in'
end

Then("I should see the Dashboard page") do
  expect(page).to have_content('Log in successful.');
end

Then("I should see the Login page") do
  expect(page).to have_content('Incorrect Email address or Password. Try Again.');
end

	