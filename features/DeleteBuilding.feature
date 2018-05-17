Feature: Delete a building
  As an administrator
  I should be able to delete a building
  So that the number of buildings will be updated

Scenario: Delete a building  
  Given that I am in the Dashboard page
  When I click the "Building Options" button
  Then I should be on the Building Options page
  When I click "DELETE" button
  Then I should able to choose which building to delete
  And press "CONFIRM"
  Then I should be still on the Building Options page
  And I should not see the building that was deleted
