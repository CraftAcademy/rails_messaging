Feature: User can compose messages
  As a user
  In order to compose a message
  I would like to have a form to send messages

Background:
  Given I visit the "sign in" page
  And a user "Fake Man" exists with email "fakeman@fake.com" and password "fakepassword"
  And fill in the "Email" field with "fakeman@fake.com"
  And fill in the "Password" field with "fakepassword"
  And I click a link "Log in"
  And a user "Fake Woman" exists with email "fakewoman@fake.com" and password "fakepassword"
  And I click a link "Inbox"
  And I click a link "Compose"

Scenario: User can see a message form when clicks on compose
  Then I should see "Recipients"
  And I should see "Subject"
  And I should see "Message"
  And I should see "Fake Woman"

Scenario: User can send a message to a contact
  Given select "Fake Woman" from "Recipients"
  And fill in the "Subject" field with "Hi There"
  And fill in the "conversation_body" field with "How you doing there? bla bla bla"
  And I click a link "Send Message"
  Then I should see "Your message was successfully sent!"
