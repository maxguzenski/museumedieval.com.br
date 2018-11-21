class CreateArmorials < ActiveRecord::Migration
  def self.up
    create_table :armorials do |t|
      t.string  :name
      t.string  :line
      t.timestamps
    end

    add_column :families, :armorial_id, :integer
    add_index :families, [:name, :armorial_id], :unique => true
  end

  def self.down
    remove_index :families, :column => [:name, :armorial_id]
    remove_column :families, :armorial_id
    drop_table :armorials
  end
end
