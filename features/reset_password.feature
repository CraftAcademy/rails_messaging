Feature: User can reset their password
  As a user
  In order to change my password
  I would like to have a option to reset my password

Scenario: User can navigate to reset password page
  Given I am on the Log in page
  When I click on "Forgot your password?"
  Then I should be redirected to "Forgot your password" page
  And I should see "Email"
