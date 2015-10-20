Feature: Basic features

	  Scenario: As a logged in user I can close the app
		Given I have logged in
	    Then I should see "Distance"
		And I close the app

	  Scenario: As a logged in user I can change Distance to Calories
	    When I see "Distance"
	    Then I press "Distance"
	    And I should see "Calories"
	    When I press "Calories"
	    Then I should see "Calories"
	    And I close the app	  

	  Scenario: As a logged in user I can change Running to Baseball
	    When I see "Running"
	    Then I press "Running"
	    And I should see "Baseball"
	    When I press "Baseball"
	    Then I should see "Baseball"
	    And I close the app

	  Scenario: As a logged in user I can change miles to kilometers
	    When I open the menu
	    Then I should see "Settings"
	    When I press "Settings"
	    Then I should see "Profile"
	    When I press "Profile"
	    And I see "Weight"
	    Then I scroll down
	    And I should see "Kilometers"
	    When I press "Kilometers"
	    And I press "Save"
	    Then I should see "Profile"
	    And I go back
	    Then I should see "km"
	    And I close the app

	  Scenario: As a logged in user I can change kilometers to miles 
	    When I open the menu
	    Then I should see "Settings"
	    When I press "Settings"
	    Then I should see "Profile"
	    When I press "Profile"
	    And I see "Weight"
	    Then I scroll down
	    And I should see "Miles"
	    When I press "Miles"
	    And I press "Save"
	    Then I should see "Profile"
	    And I go back
	    Then I should see "miles"
	    And I close the app

		
	  Scenario: I should be able to open and close navigation drawer
		When I open navigation drawer 
		Then I should see my profiles name
		When I close navigation drawer
		Then I should not see my profiles name
		
	  Scenario: I should be able to see my profiles name when I open navigation drawer
		When I open navigation drawer 
		Then I should see my profiles name
		When I close navigation drawer
		Then I should not see my profiles name