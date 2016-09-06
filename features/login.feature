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

#There is a quicker way to do this with tables:
# http://stackoverflow.com/questions/26920081/best-practice-to-test-if-any-empty-field
Scenario: Not proper e-mail
  Given I am on the "login" page
  When I fill in "Email" with "jennyrandom.com"
  And I fill in "Password" with "password"
  And I click the "Log in" button
  Then I should see "Invalid email or password"

Scenario: Not entered e-mail/password
  Given I am on the "login" page
  When I fill in "Email" with ""
  And I fill in "Password" with ""
  And I click the "Log in" button
  Then I should see "You need to enter your e-mail"
