class CreateFamilies < ActiveRecord::Migration
  def self.up
    create_table :families do |t|
      t.string :name
      t.string :variatons
      t.boolean :history, :default => false
      t.timestamps
    end

    add_index :families, :name
    add_index :families, :variatons
  end

  def self.down
    drop_table :families
  end
end
