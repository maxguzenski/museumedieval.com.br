class AddColumnsToContacts < ActiveRecord::Migration
  def self.up
    add_column :contacts, :place, :string
    add_column :contacts, :product_id, :integer
    add_column :contacts, :size_id, :integer
  end

  def self.down
    remove_column :contacts, :size_id
    remove_column :contacts, :product_id
    remove_column :contacts, :place
  end
end
