class CreateFamilySearches < ActiveRecord::Migration
  def self.up
    create_table :family_searches do |t|
      t.string  :name
      t.integer :search_count, :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :family_searches
  end
end
