class CreateClients < ActiveRecord::Migration
  def up
   create_table :addresses do |t|
    t.references :client
   end   
   create_table :orders do |t|
    t.references :client
   end   
   create_table :clients do |t|    
   end
   create_table :roles do |t|    
   end
   create_table 'clients_roles', :id => false do |t|
    t.column :client_id, :integer
    t.column :role_id, :integer
   end
  end

  def down
   drop_table 'clients_roles'
   drop_table :roles
   drop_table :clients
   drop_table :orders
   drop_table :addresses
  end
end
