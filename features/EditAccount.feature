Feature: Edit Profile Information
	As a user
	I want to edit my account settings
	So that I can update all the data regarding my account

Scenario: User edits his profile information
   Given I am an authenticated user
   And I am on the Account Settings page
   Then I should see the Change Password button
   When I click the Change Password button
   Then I should be on the Edit Account Settings page
   When I fill up the field with necessary information
   And I click the Save button
   Then I should be on the Account Settings page
   And I should see the newly updated account settings
