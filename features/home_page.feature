Feature: Home page 
 Scenario: The proper headline should appear
  When I visit the home page
  Then I should see "Welcome to Fit Now" in the selector "h1"