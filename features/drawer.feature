Feature: Drawer features
	  Scenario: I should be able to open and close navigation drawer
	    Given I have logged in
		When I open navigation drawer 
		Then I should see my profiles name
		When I close navigation drawer
		Then I should not see my profiles name