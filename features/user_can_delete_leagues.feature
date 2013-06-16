Feature: User can delete leagues
  In order to make sure my leagues are correct
  As a user
  I want to be able to delete leagues

  Scenario: Happy Path
    Given the user "new_user@email.com" with password "password1"
    Given the league "espn" has been created
    When I go to the homepage
    And I log in as "new_user@email.com" with password "password1"
    And I click "Football"
    And I click "espn"
    And I click "Delete"
    Then I should not see "espn"