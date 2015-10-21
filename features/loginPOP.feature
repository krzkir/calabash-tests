
Feature: Login using POP feature
    
  Scenario: I can log in to my account with existing email and password
    Given the app is launched
    When I press login
    And I press login with email
    And I enter my login and password followed by pressing login button
    Then I should be logged in