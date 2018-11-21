class AddStatusClientSearch < ActiveRecord::Migration
  def self.up
    remove_column :client_searches, :active
    add_column :client_searches, :status, :string, :default => 'pending'
  end

  def self.down
    add_column :client_searches, :active, :boolean
    remove_column :client_searches, :status
  end
end
