Feature: As a registered user
  in order to access the functions of the site
  I need to be able to login

Background:
  Given following users exists
    | name   | email              | password |
    | Jenny  | jenny@random.com   | password |

Scenario: Logging in
Given I am on the "home" page
Then I should see "Login" link
When I click the "Login" link
Then I should be on the "Login" page
