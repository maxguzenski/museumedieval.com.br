class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.integer :client_id
      t.string  :street
      t.integer :number
      t.string  :neighborhood
      t.string  :complement
      t.string  :zip_code
      t.string  :city
      t.string  :country_state
      t.string  :country, :default => "BR"
      t.boolean :default_address, :default => true
      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
