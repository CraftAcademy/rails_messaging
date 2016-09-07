Feature: As a user
  in order to have a way to access the site if I forgot my password
  I should be able to have my password reset

Background:
  Given following users exist
    | name   | email              | password |
    | Jenny  | jenny@random.com   | password |

Scenario: I forgot my password and need to reset it
  Given I am on the "login" page
  Then I should see "Forgot your password?" link
  When I click the "Forgot your password?" link
  Then I should be on the "Forgot your password" page
  And I should see "Forgot your password?"
  When I fill in "Email" with "jenny@random.com"
  And I click the "Send me reset password instructions" button
  Then I should be on the "login" page
  And I should see "You will receive an email with instructions"

Scenario: I leave email blank and try to reset my password
  Given I am on the "Forgot your password" page
  When I click the "Send me reset password instructions" button
  Then I should see "Email can't be blank"
