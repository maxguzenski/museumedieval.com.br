class AddColumnsToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :user_id, :integer
    add_column :comments, :product_id, :integer
    add_column :comments, :type, :string
  end

  def self.down
    remove_column :comments, :user_id
    remove_column :comments, :product_id
    remove_column :comments, :type
  end
end
