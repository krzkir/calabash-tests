Feature: History features

	  Scenario: I should be able to manually add training data
	    Given I have logged in
	    And I open navigation drawer 
	    Then I press "History"
	    And I press view with id "create_workout_fab"
	    And I press "Duration"
	    Then I change training time
	    And I press "Done"
	    And I press "Distance"
	    And I change distance
	    Then I press "Done"
	    And I press "Start time"
	    Then I set date to 21-10-2015
	    And I press "Done"
	    Then I set time to "10:00" on TimePicker with id "time_picker"
	    And I press "Done"
	    Then I press "Sport"
	    Then I scroll until I see the "Fencing" text
	    And I press "Fencing"
	    Then I press "Save"
	    And I should see "Summary"



