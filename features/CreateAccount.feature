Feature: Create Account
   As a user
   I want to create my own account
   So that I can access the features of the program

Scenario: A user wants to create an account
   Given I am on the Login page
   Then I should see the Create Account button
   When I click the Create Account button
   Then I should be on the Create Account page
   When I fill in the "email" with "email"
   When I fill in the "passwd" with "password"
   When I fill in the "firstname" with "firstname"
   When I fill in the "lastname" with "lastname"
   And I click the Save button
   Then I should be on the Login page
   #And I should be able to login using the new account
