class CreateRoutinesWorkouts < ActiveRecord::Migration
  def change
    create_table :routines_workouts, :id => false do |t|
      t.references :workout
      t.references :routine
      
      t.timestamps
    end
  end
end
