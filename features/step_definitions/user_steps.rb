require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
   User.create(user)
  end
end

Given /^I go to the new user page$/ do
 visit new_user_path
end

When /^I visit the home page$/ do
 visit root_path
end

When /^I visit the about us page$/ do
 visit about_path
end
 
Given /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

Given /^(?:|I )check "([^"]*)"$/ do |field|
  check(field)
end

Given /^I am on the page with user id "([^"]*)"$/ do |arg1|
 visit user_path(arg1)
end
 
When /^I press "([^"]*)"$/ do |arg1|
  click_button 'Create'
end
 
Then /^I should be on the user list page$/ do
 page.should have_content('Listing users')
end

Then /^I should be on the new user page$/ do
 page.should have_content('New User')
end
 
Then /^I should see "([^"]*)"$/ do |arg1|
  page.should have_content(arg1)
end

Then /^I should see "([^"]*)" in the selector "([^"]*)"$/ do |text, selector|
  page.should have_selector selector, text: text
end
