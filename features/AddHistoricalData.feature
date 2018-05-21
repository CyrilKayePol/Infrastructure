Feature: Add Historical Data
  As an administrator
  I should be able to add historical data of a building
  So that I can monitor the events of a building

Scenario: Add Historical Data
  Given I am on the Profile Information page
  When I click "Add Historical Data" button 
  Then I should be on the Add Historical Data page
  When I fill in the "NAME OF THE BUILDING" with "AS CONFERENCE"
  And I fill the "EVENT DATE" with "APRIL" "1" "2018"
  And I fill the "EVENT" with "REPAINT"
  And I press "ADD"
  Then I should still be on the Add Historical Data page
  And I should see "AS CONFERENCE"
