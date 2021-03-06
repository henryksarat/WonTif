# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  first_name :string(255)
#  last_name  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

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
  
 has_many :WorkoutLogs, :dependent => :destroy
 has_many :workouts, :through => :WorkoutLogs
 has_many :routines
 has_many :RoutinesWorkouts, :through => :routines
end
