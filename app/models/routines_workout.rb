# == Schema Information
#
# Table name: routines_workouts
#
#  workout_id :integer
#  routine_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RoutinesWorkout < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :workout
end
