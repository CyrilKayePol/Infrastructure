
When  /^(?:|I )fill up the field with necessary information$/ do
	
	 within('form.account_settings') do
		fill_in 'passwd', with: 'taylor'
		
	end
end

And  /^(?:|I )should see the newly updated account settings$/ do
	 within('form.account_settings') do
		expect(find_field('passwd').value).to eq 'taylor'
		
	end
end