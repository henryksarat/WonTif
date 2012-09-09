class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string :name
      t.string :description
      t.references :user

      t.timestamps
    end
    add_index :routines, :user_id
  end
end
