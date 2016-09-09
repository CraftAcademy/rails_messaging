Feature: As a user
  in order to terminate my session
  I should be able to log out

Background:
  Given following users exist
    | name   | email              | password |
    | Jenny  | jenny@random.com   | password |

Scenario: Log out link showing
  Given I am logged in as "Jenny"
  And I am on the "home" page
  Then I should see "Logout"

Scenario: Log out user when link is clicked
  Given I am logged in as "Jenny"
  And I am on the "home" page
  When I click the "Logout" link
  Then I should see "Signed out successfully"
