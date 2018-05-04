Feature: User can see sign up fields
  As a user
  In order to login
  I would like to see a form with email and password

  Background:
  Given the user "bob" exists

Scenario: User should see a logon screen
  Given I visit the site
  When I click "Login"
  Then I should be redirected to the "sign_in" page
  And I should see "Email"
  And I should see "Password"

Scenario: User should be able to login successfully
  Given I am on the "Login" page
  And I fill in field "Email" with "bob@bobisanasshole.com"
  And I fill in field "Password" with "12345678"
  When I click on "Log in" button
  Then I should see message "Signed in successfully"
