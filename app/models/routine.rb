class Routine < ActiveRecord::Base
  belongs_to :users
  has_many :RoutineWorkouts
  has_many :workouts, :through => :RoutineWorkouts
  
  attr_accessible :description, :name
end
