class AddColumnsClientSearches < ActiveRecord::Migration
  def self.up
    add_column :client_searches, :name, :string
    add_column :client_searches, :email, :string
  end

  def self.down
    remove_column :client_searches, :email
    remove_column :client_searches, :name
  end
end
