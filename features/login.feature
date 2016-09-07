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
  Then I should be on the "login" page
  When I fill in "Email" with "jenny@random.com"
  And I fill in "Password" with "password"
  And I click the "Log in" button
  Then I should see "Signed in successfully"

Scenario: Not proper e-mail
  Given I am on the "login" page
  When I fill in "Email" with "jennyrandom.com"
  And I fill in "Password" with "password"
  And I click the "Log in" button
  Then I should see "Invalid email or password"

Scenario: Not input email
  Given I am on the "login" page
  When I leave the "Email" field empty
  And I click the "Log in" button
  Then I should see "Invalid email or password"

Scenario: Not input email
  Given I am on the "login" page
  When I leave the "Password" field empty
  And I click the "Log in" button
  Then I should see "Invalid email or password"

Scenario: Not registered user
  Given I am on the "login" page
  When I fill in "Email" with "henny@random.com"
  And I fill in "Password" with "password"
  And I click the "Log in" button
  Then I should see "Invalid email or password"
