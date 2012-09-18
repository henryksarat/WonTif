Feature: Make sure all of the static pages work
 Scenario: The proper headline should appear on the About Us page
  When I visit the about us page
  Then I should see "About Us" in the selector "h1"
  Then I should see "Fit Now | About Us" in the selector "title"