class AddClientToOrder < ActiveRecord::Migration
  def self.up
    add_column :orders, :client_id, :integer
    add_column :orders, :address_id, :integer
  end

  def self.down
    remove_column :orders, :client_id
    remove_column :orders, :address_id
  end
end
