class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string  :name
      t.text    :description
      t.integer :delivery      
      t.boolean :junction
      t.string  :type
      t.integer :position
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
