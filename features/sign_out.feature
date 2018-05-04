Feature: User needs to sign out
  As a user
  In order to leave the site securely
  I need to to be able to sign out

Background:
  Given I visit the "sign in" page
  And a user "Fake Man" exists with email "fakeman@fake.com" and password "fakepassword"

Scenario: User enters invalid login credentials
  Given I click a link "Login"
  And fill in the "Email" field with "fakeman@fake.com"
  And fill in the "Password" field with "fakepassword"
  And I click a link "Log in"
  Then I click a link "Logout"
  And I should see "Signed out successfully"
