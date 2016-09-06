Feature: As a visitor
  in order to interact with the site
  I need to be able to sign up

Scenario: Signing up
Given I am on the "home" page
Then I should see "Sign up" link
When I click the "Sign up" link
Then I should be on the "/users/sign_up" page
