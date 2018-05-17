Feature: View Status of Buildings
	As a user
	I am able to view the status of each building
	So that I can identify its current condition

Scenario:
	Given I am an authenticated user
	And the following buildings exist:
	| name          | date_built | condition |
	| Ladies' Dorm  | 2005       | Usable    |
	| Men's Dorm    | 2050       | Unusable  |
	| Swimming Pool | 3000       | Imaginary |
	And I am on View Buildings page
	Then I should see each building's condition
	
	