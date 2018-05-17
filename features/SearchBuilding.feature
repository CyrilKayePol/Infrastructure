Feature: Search a Building
  As a user
  I want to search for a specific building
  So that I can easily locate the information of a building without going through the list

Scenario: User wants to search for a specific building
  Given I am an authenticated user
  And I am on View Buildings page
  When I fill in the search bar with "Student Lounge"
  And I press the search button
  Then I should still be on the View Buildings page
  But the list will display only the information of "Student Lounge"