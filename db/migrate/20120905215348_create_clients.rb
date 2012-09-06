class CreateClients < ActiveRecord::Migration
  def change
   create_table :addresses do |t|
    t.references :client
    
    t.timestamps
   end   
   create_table :orders do |t|
    t.references :client
    
    t.timestamps
   end   
   create_table :clients do |t|
    t.integer :orders_count
    
    t.timestamps
   end
   create_table :roles do |t|    	   
    t.timestamps
   end
   create_table 'clients_roles', :id => false do |t|
    t.column :client_id, :integer
    t.column :role_id, :integer
    
    t.timestamps
   end
   
   add_index :orders, :client_id
   add_index :addresses, :client_id
  end
end
