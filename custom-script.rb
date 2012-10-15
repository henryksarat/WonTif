require 'open-uri'

puts "hi there"

contents = URI.parse('http://ec2-204-236-130-153.us-west-1.compute.amazonaws.com/policy/0fcc9330-cb04-012f-949a-1231400142dd/52931786e6ad34f1bbfb126d5ed93ec2a7678847/com.test.api/policy.xml').read
puts contents
