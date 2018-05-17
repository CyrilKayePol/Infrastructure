Feature: Update info of a building
  As an administrator
  I should be able to edit the info of a building
  So that I am able to update the building's status

Scenario: Edit a building
  Given that I am in the Dashboard page
  When I click "Building Options" button
  Then I should be on the Building Option page
  When I click "EDIT" button
  Then I should be able edit all the text fields
  When I press "SAVE"
  Then I should be still on the Building Options page
  And I should see the updated information of the builing

