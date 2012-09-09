class CreateRoutineWorkouts < ActiveRecord::Migration
  def change
    create_table :routine_workouts do |t|
      t.references :workout
      t.references :routine
      
      t.timestamps
    end
  end
end
