Feature: User should have a dashboard
  As a user
  In order to use the site.
  I need to see my dashboard after login

Background:
  Given I visit the "sign in" page
  And a user "Fake Man" exists with email "fakeman@fake.com" and password "fakepassword"
  And fill in the "Email" field with "fakeman@fake.com"
  And fill in the "Password" field with "fakepassword"
  And I click a link "Log in"

Scenario: User logs in and goes to dashboard
  Given I click a link "Inbox"
  Then I should see "Inbox"
  And I should see "Sent"
  And I should see "Trash"
