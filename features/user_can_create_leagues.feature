Feature: User can create leagues
  In order to have leagues to calculate for
  As a user
  I want to create leagues

  Scenario: Happy Path
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "bob@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Log In"
    And I press "Football"
    And I press "Add"
    And I fill in "espn" for "Name"
    And I press "Submit"
    Then I should see "espn"

  Scenario: No League Name
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "bob@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Log In"
    And I press "Football"
    And I press "Add"
    And I press "Submit"
    Then I should see "Name can't be blank"