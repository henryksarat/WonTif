class CreateWorkouts < ActiveRecord::Migration
    def change
    create_table :workouts do |t|
      t.string :name
      t.string :special_instructions

      t.timestamps
    end
  end
end
