class CreateWorkoutLogs < ActiveRecord::Migration
  def change
    create_table :workout_logs do |t|
      t.integer :reps
      t.integer :set
      t.decimal :pounds
      t.references :user
      t.references :workout

      t.timestamps
    end
  end
end
