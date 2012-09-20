# == Schema Information
#
# Table name: workouts
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  special_instructions :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Workout < ActiveRecord::Base
  attr_accessible :name
  
  has_many :workoutlogs
  has_many :users, :through => :WorkoutLogs
  has_and_belongs_to_many :routines
end
