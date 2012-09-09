class Routine < ActiveRecord::Base
  has_many :routine_workouts
  has_many :workouts, :through => :routine_workouts
  
  attr_accessible :description, :name
end
