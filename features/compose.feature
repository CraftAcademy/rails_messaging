Feature: As a user
 in order to send messages
 I need to be able to compose messages (recipient, subject, msg)

 Background:
   Given following users exist
     | name   | email              | password |
     | Jenny  | jenny@random.com   | password |
     | Anna   |  anna@random.com   | password |
     | Marge  |  marge@random.com  | password |

 Scenario: Compose-button on mailbox page
   Given I am logged in as "Jenny"
   And I am on the "mailbox" page
   Then I should see "Compose"
   When I click the "Compose" link
   Then I should be on the "compose" page

 Scenario: Sending a message
   Given I am logged in as "Jenny"
   And I am on the "compose" page
   When I select "Anna" in "Recipients"
   And I fill in "Subject" with "here's a message"
   And I fill in "Message" with "message body"
   When I click the "Send Message" button
  #  Then I should be on the "conversation" page
   And I should see "Your message was successfully sent"
   And I should see "here's a message"


 Scenario: I send a message
   Given I am logged in as "Jenny"
   And I send a mail to "Anna" with subject "Hey there Anna!"
   And I am on the "mailbox" page
   When I click the "Sent" link
   Then I should see "Hey there Anna!"

  @javascript
  Scenario: I see a list of available users in my dropdown
   Given the inbox of "Anna" has 0 emails
   And I am logged in as "Jenny"
   And I am on the "compose" page
   And I pick "Anna" from dropdown list
   And I fill in "Subject" with "subject"
   And I fill in "Message" with "message to Anna"
   When I click the "Send Message" button
   Then I should see "Your message was successfully sent"
   And the inbox of "Anna" should have 1 emails

  # Susanna will maybe tackle this one tonight, if not tomorrow morning.
  # @javascript
  # Scenario: I send a message to someonw not in list
  #  Given I am logged in as "Jenny"
  #  And I am on the "compose" page
  #  And I select "Nope" in "Recipients"
  #  Then I should see "No results matched"
