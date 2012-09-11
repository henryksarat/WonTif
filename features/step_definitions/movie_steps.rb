require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create(movie)
  end
end

# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.content  is the entire content of the page as a string.
  puts e1
  puts e2
  g = page.body.to_s
  g = g.to_s.gsub("\n", "")
  movies = g.scan /<tr><td>(.*?)<\/td>/
  puts movies
  
  myIndex = 0
  myFirst = 0
  myLast = 0
  movies.each do |movie|
   if movie[0] == e1
    myFirst = myIndex
   elsif movie[0] == e2
    myLast = myIndex
   end
   myIndex += 1
  end
  
  assert myFirst<myLast
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb

  if uncheck == "un"
   rating_list.split(',').each { |rating| uncheck("ratings_"+rating) }
  else
   rating_list.split(',').each { |rating| check("ratings_"+rating) }
  end
end

When /I "submit" the search form on the homepage/ do 
 click_button("ratings_submit")
end

Then /^(?:|I )should see the movies "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    text.split(',').each { |movie| assert page.has_content?(movie) }
  end
end

Then /^(?:|I )should not see the movies "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_no_content(text)
  else
    text.split(',').each { |movie| assert page.has_no_content?(movie) }
  end
end