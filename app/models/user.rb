require 'GoodnessValidator.rb'
require 'EmailValidator.rb'

class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :terms_of_service, :email_confirmation
  
  validates :email, :presence => true,
  		    :confirmation => true,
  		    :uniqueness => { :case_sensitive => false },
  		    :format => { 
  		    	:with => /^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$/, 
  		    	:message => " invalid!!"
  		    },
  		    :email => true
  validates :first_name, :presence => true, :length => { :in => 1..10 }
  validates :last_name, :presence => true,
  			:exclusion => {
  				:in => %w(obama),
  				:message => "Cuz I know you ain't %{value}!" 
  			}
  validates :terms_of_service, :acceptance => true
  validates :email_confirmation, :presence => true
  validates_with GoodnessValidator, :fields => [:first_name, :last_name]
  
  after_find do |user|
    puts "Finding of users shot off!"
  end
  
 has_many :workout_logs, :dependent => :destroy
end
