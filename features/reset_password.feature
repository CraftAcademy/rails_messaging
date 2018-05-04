Feature: User can navigate to and reset password
  As a user
  In order to change my password
  I would like to have a option to reset my password

Scenario: User can navigate to reset password page
  Given I am on the Log in page
  When I click on "Forgot your password?"
  Then I should be redirected to "Forgot your password" page
  And I should see "Email"

Scenario: User can reset their password
  Given I am on "forgot password" page
  And I fill in field "Email" with "bob@bobisanasshole.com"
  When I click "Send me reset password instructions"
  Then I should be redirected to "password" page
