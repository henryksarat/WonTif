class Routine < ActiveRecord::Base
  attr_accessible :description, :name
  
  belongs_to :users
  has_and_belongs_to_many :workouts
  has_many :RoutinesWorkouts, :after_add => [:new_routine, :email_routine]
  
  def new_routine(rworkout)
   puts "added a new routine workout"  
  end

  def email_routine(rworkout)
   puts "now email the routine"  
  end
end
