Feature: Search Historical Data
   As a user
   I want to search for the historical data of a building
   So that I don't need to traverse through the entire list of buildings

Scenario: Users search for a building in the view historical data page
   Given that I am on the View Historical Data page
   Then I should see a list containing the historical information of all the buildings
   And I should see a "Search Building" field
   When I fill in the "Search Building" field with the "Name of building"
   And press the "Search" button
   Then I should be on the View Historical Data page
   But the list will display only the information of that building