Feature: As a visitor
  in order to interact with the site
  I need to be able to sign up

Scenario: Signing up happy path
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

Scenario: I try to register with a password that is fewer than 8 characters
  Given I am on the "sign up" page
  When I fill in "Name" with "Amber"
  And I fill in "Email" with "theamb@gmail.com"
  And I fill in "Password" with "pass"
  And I fill in "Password confirmation" with "pass"
  When I click the "Create" button
  Then I should be on the "users" page
  And I should see "Password is too short"
