Feature: As a user
  in order to have a way to access the site if I forgot my password
  I should be able to have my password reset

Scenario: I forgot my password and need to reset it
  Given I am on the "login" page
  Then I should see "Forgot your password?" link
  When I click the "Forgot your password?" link
  Then I should be on the "Forgot your password" page
  And I should see "Forgot your password?"
