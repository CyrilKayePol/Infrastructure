Feature: User Log out
	As a user,
	I want to be able to log out
	So that I can sign off from the system
Scenario: User successfully logged out from Profile Information page
	Given I am an authenticated user
	And I am on the Profile Information page
	Then I should see the LOG OUT button
	When I click the LOG OUT button
	Then I should be on the Login page
	
	
	
	