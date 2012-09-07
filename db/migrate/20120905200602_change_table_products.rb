class ChangeTableProducts < ActiveRecord::Migration
  def up
   change_table :products do |t|
    t.remove :description, :name
    t.string :part_number
    t.index :part_number
   end
  end

  def down
   change_table :products do |t|
    t.string :description 
    t.string :name
    t.remove_index :part_number
    t.remove :part_number
   end
  end
end
