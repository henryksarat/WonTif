class Workout < ActiveRecord::Base
  attr_accessible :name
  
  has_many :workoutlogs
  has_many :users, :through => :WorkoutLogs
end
