
When  /^(?:|I )fill up the fields with necessary information$/ do
	 within('form.profile') do
		fill_in 'first_name', with: 'taytay'
		fill_in 'last_name', with: 'swizzle'
	end
end

And  /^(?:|I )should see the newly updated profile information$/ do
	 within('form.profile') do
		expect(find_field('first_name').value).to eq 'taytay'
		expect(find_field('last_name').value).to eq 'swizzle'
	end
end