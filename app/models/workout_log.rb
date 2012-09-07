class WorkoutLog < ActiveRecord::Base
  attr_accessible :workout_name, :reps, :set, :pounds
  
  belongs_to :user
end
