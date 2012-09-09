class WorkoutLog < ActiveRecord::Base
  attr_accessible :reps, :set, :pounds
  
  belongs_to :user
  belongs_to :workout
end
