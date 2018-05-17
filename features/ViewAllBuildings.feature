Feature: View All Buildings
   As a user
   I should be able to view all the buildings
   So that I can see what are buildings currently built in the institution

Scenario: User views the list of all buildings
   Given I am an authenticated user
   And I am on the Dashboard page
   Then I expect to see the VIEW BUILDINGS button
   When I click the VIEW BUILDINGS button
   Then I should be on View Buildings page
   And I should see a list containing all the information of all the buildings
