Feature: As a visitor
  in order to interact with the site
  I need to be able to sign up

Scenario: Signing up
  Given I am on the "home" page
  Then I should see "Sign up" link
  When I click the "Sign up" link
  Then I should be on the "sign up" page
  When I fill in "Name" with "Amber"
  And I fill in "Email" with "theamb@gmail.com"
  And I fill in "Password" with "password"
  And I fill in "Password confirmation" with "password"
  When I click the "Create" button
  Then I should be on the "index" page
  And I should see "Welcome!"
