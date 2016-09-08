Feature: As a user
  in order to clean up my mailbox
  I should be able to trash a message thread

Background:
  Given following users exist
    | name   | email              | password |
    | Jenny  | jenny@random.com   | password |
    | Anna   | anna@random.com    | password |
@javascript
Scenario: I delete a message from my inbox
  Given I am logged in as "Jenny"
  And I send a mail to "Anna" with subject "Hey there Anna!"
  And I send a mail to "Anna" with subject "Yo Anna!"
  And I send a mail to "Anna" with subject "Third message!"
  And I am on the "index" page
  And I click the "Logout" link

  Given I am logged in as "Anna"
  And I am on the "mailbox" page
  And I click the first "View" link
  And I click the "Move to trash" link
  Then show me the page

  Then I should be on the "mailbox" page
  And I should not see "Third Message!"
  And I should see "Hey there Anna!"
  When I click the "Trash" link
  Then "Trash" should be highlighted
  Then I should see "Third message!"

  When I am on the "mailbox" page
  And I click the first "View" link
  And I click the "Move to trash" link
  And I click the "Trash" link
  Then I should see "Yo Anna!"

Scenario: I untrash a message
  Given I am logged in as "Jenny"
  And I send a mail to "Anna" with subject "Hey there Anna!"
  And I am on the "index" page
  And I click the "Logout" link

  Given I am logged in as "Anna"
  And I am on the "mailbox" page
  And I click the first "View" link
  And I click the "Move to trash" link
  Then I should be on the "mailbox" page
  And I should not see "Hey there Anna!"
  When I click the "Trash" link
  Then I should see "Hey there Anna!"
  When I click the "View" link
  Then I should see "Untrash"
  When I click the "Untrash" link
  Then I should be on the "mailbox" page
  And I should see "Hey there Anna!"

Scenario: I reply to a trashed message (that I sent to myself)
  Given I am logged in as "Jenny"
  And I send a mail to "Jenny" with subject "Hey there me!"
  And I am on the "mailbox" page
  Then I should see "Hey there me!"
  When I click the "View" link
  And I fill in the reply box with "replying to a trashed message"
  And I click the "Reply" button
  Then I should see "replying to a trashed message"
  When I click the "Inbox" link
  Then I should see "replying to a trashed message"
  When I click the "Trash" link
  Then I should not see "replying to a trashed message"

@javascript
Scenario: Deleting a message gives prompt
  Given I am logged in as "Jenny"
  And I send a mail to "Jenny" with subject "Hey there me!"
  And I am on the "mailbox" page
  Then I should see "Hey there me!"
  When I click the "View" link
  And I click the "Trash" link
  #Then I should be prompted with "are you sure"
