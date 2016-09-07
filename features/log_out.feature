Feature: As a user
  in order to terminate my session
  I should be able to log out

Background:
  Given following users exist
    | name   | email              | password |
    | Jenny  | jenny@random.com   | password |

Scenario: System greeting logged in user
  Given I am logged in as "Jenny"
  And I am on the "home" page
  Then I should see "Logout"
