Feature: User can sign up
  As a user
  In order to use the app
  I should be able to sign up

  Scenario: Visitor successfully signs up
    Given I visit the root path
    When I click on "Sign up"
    Then I should be on sign up page
    Then I fill in "Name" with "sigu"
    And I fill in "Email" with "valid@email.com"
    And I fill in "Password" with "asdf1234"
    And I fill in "Password confirmation" with "asdf1234"
    Then I click on "Create"
    Then I should see "Welcome! You have signed up successfully."
