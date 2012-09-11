require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

# Add a declarative step here for populating the DB with movies.

Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    User.create(user)
  end
end
