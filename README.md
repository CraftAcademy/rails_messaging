## Testing a legacy code

We used:

- Cucumber with Capybara for Acceptance tests
- Phantomjs and Poltergeist for Acceptance tests of JS functions
- Rspec with Shoulda-matchers for unit tests
- "Show me the cookies" for testing the "remember me"-function for mailboxer

The App uses:

- FactoryGirl for stubbing users
- Mailboxer for message sending
- Devise for login and authentication
- Rails 4.2.5
- Postgres 8.15
