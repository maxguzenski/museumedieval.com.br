class CreateClientSearches < ActiveRecord::Migration
  def self.up
    create_table :client_searches do |t|
      t.references  :client
      t.references  :order
      
      t.string      :surname_1
      t.string      :variatons_1
      t.string      :region_1
      t.text        :description_1
      
      t.string      :surname_2
      t.string      :variatons_2
      t.string      :region_2
      t.text        :description_2
      
      t.string      :surname_3
      t.string      :variatons_3
      t.string      :region_3
      t.text        :description_3
      
      t.string      :surname_4
      t.string      :variatons_4
      t.string      :region_4
      t.text        :description_4
      
      t.decimal     :price, :precision => 6, :scale => 2
      t.boolean     :active, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :client_searches
  end
end
