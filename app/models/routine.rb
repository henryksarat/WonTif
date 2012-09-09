class Routine < ActiveRecord::Base
  belongs_to :users
  has_and_belongs_to_many :workouts
  has_many :RoutinesWorkouts
  
  attr_accessible :description, :name
end
