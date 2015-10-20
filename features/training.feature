Feature: Training features

	  Scenario: After finishing a training I see a summary
	    Given I have logged in
		When I start training
		And I wait
		Then I pause training
		And I stop training
		Then I should see "Photos"
		When I go back
		Then I should see "Summary"
		
	  Scenario: I should be able to open and close navigation drawer
		When I open navigation drawer 
		Then I should see my profiles name
		When I close navigation drawer
		Then I should not see my profiles name
