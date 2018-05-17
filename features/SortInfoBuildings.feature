Feature: Sort Information of All Buildings
  As a user
  I want to sort the list of information of all buildings
  So that I can easily locate the data of a building

Scenario: User wants to sort the list by Name of Building
  Given that I am on the View Buildings page
  Then I should see a list containing all the information of all the buildings
  When I click on the Name of Building label
  Then I should still be on the View Buildings page
  And the list should be sorted alphabetically according to the name of the building

Scenario: User wants to sort the list by Date
  Given that I am on the View Buildings page
  Then I should see a list containing all the information of all the buildings
  When I click on the Date Built label
  Then I should still be on the View Buildings page
  And the list should be sorted chronologically according to the date the building was built