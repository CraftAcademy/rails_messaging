Feature: User can read messages
  As a user
  In order to read messages
  I should be able to see new messages in my inbox

Background:
  Given a user "Fake Man" exists with email "fakeman@fake.com" and password "fakepassword"
  And a user "Fake Woman" exists with email "fakewoman@fake.com" and password "fakepassword"
  And I visit the "sign in" page
  And fill in the "Email" field with "fakeman@fake.com"
  And fill in the "Password" field with "fakepassword"
  And I click a link "Log in"
  And I click a link "Inbox"
  And I have a message

Scenario: User sees the message in the inbox
  Then I should see "This is the first message"
