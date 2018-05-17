Feature: Sort Historical Data
   As a user
   I want to sort the list of historical data
   So that I can easily locate the data of a building

Scenario: User sorts the historical data by name of the building
   Given I am an authenticated user
   And I am on the View Historical Data page
   Then I should see a table containing the historical information of all the buildings
   When I click on the "Name of the Building" label
   Then I should be on the View Historical Page
   And the list should be sorted alphabetically according the the name of the building

Scenario: User sorts the historical data by name of the building
   Given I am an authenticated user
   And I am on the View Historical Data page
   Then I should see a table containing the historical information of all the buildings
   When I click on the "Date" label
   Then I should be on the View Historical page
   And the list should be sorted according the the date of the event occurred
