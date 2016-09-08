Feature: As a user
  in order to avoid logging in too frequently
  I would like to be able to have the site remember me

Background:
  Given following users exist
    | name   | email              | password |
    | Jenny  | jenny@random.com   | password |
  And I am on the "login" page
  And I fill in "Email" with "jenny@random.com"
  And I fill in "Password" with "password"

Scenario: I hit the remember me button on login and revisit the site
  And I click the "Remember me" checkbox
  And I click the "Log in" button
  Then I should be on the "home" page
  When I leave the site
  And I am on the "inbox" page
  Then I should see "Hello, Jenny"

Scenario: I don't hit the remember me button on login and revisit the site
  And I click the "Log in" button
  Then I should be on the "home" page
  When I leave the site
  And I try to visit the "inbox" page
  Then I should be on the "login" page
