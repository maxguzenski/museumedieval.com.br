class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string  :name
      t.string  :genrer
      t.integer :phone_ddd
      t.integer :phone_number
      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
