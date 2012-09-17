Feature: User management
Background: users have been added to database

 Given the following users exist:
 | id | email     | email_confirmation | first_name | last_name |
 | 1  | h@aol.com | h@aol.com          | henryk     | sarat     |
 
 Scenario: User information should display
  Given I am on the page with user id "1"
  Then I should see "h@aol.com"
 
 Scenario: User adds a new user
  Given I go to the new user page
  And I fill in "Email" with "henryk@gmail.com"
  And I fill in "Email confirmation" with "henryk@gmail.com"
  And I fill in "First name" with "Henryk"
  And I fill in "Last name" with "Sarat"
  And I check "Terms of service"
  When I press "Create"
  Then I should be on the user list page
  And I should see "henryk@gmail.com"
 
 Scenario: User tries to add a new user without an email
  Given I go to the new user page
  When I press "Create"
  Then the "Email" field should have the error "can't be blank"
  And I should be on the new user page
  And I should see "New User" in the selector "h1"
