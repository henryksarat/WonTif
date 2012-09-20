# == Schema Information
#
# Table name: workout_logs
#
#  id         :integer          not null, primary key
#  reps       :integer
#  set        :integer
#  pounds     :decimal(, )
#  user_id    :integer
#  workout_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class WorkoutLog < ActiveRecord::Base
  attr_accessible :reps, :set, :pounds
  
  belongs_to :user
  belongs_to :workout
end
