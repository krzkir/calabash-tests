Feature: Various login attempts

	Scenario: As an invalid user I cannot log into my app using login with Google
		When I press login
		And I press "Login with Google"
		Then I see "Google+ authentication failed."
		And I press "Ok"
		And I go back twice
		Then I should see login screen

	Scenario: As an invalid user I cannot log into my app using login with Google
		When I press login
		And I press "Login with Facebook"
		Then I see "To complete this action, you need to install the Facebook app."
		And I go back twice
		Then I should see login screen

	Scenario: As an invalid user I cannot log into my app using invalid email and password
		When I press login
		And I press login with email
		And I enter text "login@te.st" into field with id "email"
		And I enter text "pswrd" into field with id "password"
		And I press "Login"
		Then I see "Sorry! We do not recognize your email address."
		And I press "Ok"
		And I go back twice
		Then I should see login screen		

	Scenario: As an invalid user I cannot log into my app using no email without a password
		When I press login
		And I press "Login with Email"
		And I press "Login"
		Then I should see "Invalid email address"
		And I go back twice
		Then I should see login screen	

	Scenario: As an invalid user I cannot log into my app using an email with no password
		When I press login
		And I press "Login with Email"
		And I enter text "login@te.st" into field with id "email"
		And I press "Login"
		Then I should see "Invalid password"
		And I go back twice
		Then I should see login screen		

	  Scenario: As a valid user I can log into my app using valid email and a correct password
	    When I press login
	    And I press "Login with Email"
	    And I enter text "testmail@te.st" into field with id "email"
	    And I enter text "endomondo" into field with id "password"
	    And I press "Login"
	    Then I should be logged in
