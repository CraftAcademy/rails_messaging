Feature: Have site remember my info for easy login
  As a user
  to have an easy login experience
  I would like the site to remember me

Background:
  Given the user "bob" exists

Scenario: Login in
  Given I visit the site
  When I click "Login"
  And I fill in field "Email" with "bob@bobisanasshole.com"
  And I fill in field "Password" with "12345678"
  And I click the "Remember me" checkbox
  And I click "Log in"
  Then I should be on the "home" page
  Then I leave the site
  And I am on the "home" page
  Then I should see "Hello, bob"
