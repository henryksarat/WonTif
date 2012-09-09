class CreateWorkoutLogs < ActiveRecord::Migration
  def change
    create_table :workout_logs do |t|
      t.string :workout_name
      t.integer :reps
      t.integer :set
      t.decimal :pounds
      t.references :user

      t.timestamps
    end
  end
end
