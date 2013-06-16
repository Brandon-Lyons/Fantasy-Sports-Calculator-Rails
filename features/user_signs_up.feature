Feature: User signs up
  In order to create some leagues
  As a user
  I want to create an account

  Scenario: Happy Path
    When I go to the homepage
    And I click "Sign Up"
    And I fill in "Brandon" for "First name"
    And I fill in "Lyons" for "Last name"
    And I fill in "brandon@email.com" for "Email"
    And I fill in "password" for "Password"
    And I fill in "password" for "Password confirmation"
    And I press "Sign up"
    Then I should be able to log back in as "brandon@email.com" with password "password"

  Scenario: Invalid Email
    When I go to the homepage
    And I click "Sign Up"
    And I fill in "Brandon" for "First name"
    And I fill in "Lyons" for "Last name"
    And I fill in "invalidemail.com" for "Email"
    And I fill in "password" for "Password"
    And I fill in "password" for "Password confirmation"
    And I press "Sign up"
    Then I should see "Email is invalid"

  Scenario: No Password Confirmation
    When I go to the homepage
    And I click "Sign Up"
    And I fill in "Brandon" for "First name"
    And I fill in "Lyons" for "Last name"
    And I fill in "brandon@email.com" for "Email"
    And I fill in "password" for "Password"
    And I press "Sign up"
    Then I should see "Password doesn't match confirmation"