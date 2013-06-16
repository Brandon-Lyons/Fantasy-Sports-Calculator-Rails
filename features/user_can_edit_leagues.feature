Feature: User can edit leagues
  In order to make sure my league settings are correct at all times
  As a user
  I want to edit my leagues

  Scenario: Happy Path
    Given the user "new_user@email.com" with password "password1"
    Given the league "espn" has been created
    When I go to the homepage
    And I log in as "new_user@email.com" with password "password1"
    And I click "Football"
    And I click "espn"
    And I click "Edit"
    And I fill in "yahoo" for "Name"
    And I click "Submit"
    Then I should see "YAHOO"
    And I should not see "espn"

  Scenario: No Name Entered
    Given the user "new_user@email.com" with password "password1"
    Given the league "espn" has been created
    When I go to the homepage
    And I log in as "new_user@email.com" with password "password1"
    And I click "Football"
    And I click "espn"
    And I click "Edit"
    And I fill in " " for "Name"
    And I click "Submit"
    Then I should see "Name can't be blank"

  Scenario: 