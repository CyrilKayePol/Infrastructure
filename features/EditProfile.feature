Feature: Edit Profile Information
   As a user
   I want to edit my profile information
   So that I can update all the data in my profile

Scenario: User edits his profile information
   Given I am an authenticated user
   And I am on the Profile Information page
   Then I should see the Edit button
   When I click the Edit button
   Then I should be on the Edit Profile page
   When I fill up the fields with necessary information
   And I click the Save button
   Then I should be on the Profile Information page
   And I should see the newly updated profile information
