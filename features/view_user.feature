Feature: display user

 As a user
 So that I can see a profile page
 I want to see the correct data
 
Background: user has been added to the database

 Given the following users exist:
 |user_id|email    |first_name|last_name|
 |2	 |h@aol.com|henryk    |sarat    |

 And I am on the WonTif home page
 
Scenario:
 When I do nothing
 Then I should see the email, "h@aol.com"
