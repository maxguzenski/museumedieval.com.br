class AlterComments < ActiveRecord::Migration
  def self.up
    remove_column :comments, :user_id
    add_column :comments, :place, :string
  end

  def self.down
    remove_column :comments, :place
    add_column :comments, :user_id, :integer
  end
end
