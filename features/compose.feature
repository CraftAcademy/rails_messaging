Feature: As a user
 in order to send messages
 I need to be able to compose messages (recipient, subject, msg)

 Background:
   Given following users exist
     | name   | email              | password |
     | Jenny  | jenny@random.com   | password |
     | Anna   |  anna@random.com   | password |


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
