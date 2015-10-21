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


	  Scenario: I can resume training after pausing it
	  	When I start training
	  	Then I should see that timer is running
	  	Then I pause training
	  	Then I should see that timer has stopped
	  	Then I resume training
	  	And I should see that timer is running
