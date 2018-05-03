Feature: User can log out of site
  As a user
  to end a session and keep my messages private
  I should be able to log out of the site

Background:
  Given the user "bob" exists

Scenario: Log out user from site
  Given I am logged in as "bob"
  And I am on the "home" page
  Then I should see "Logout"
  When I click "Logout"
  Then I should see "Signed out successfully"
