class CreateCutlers < ActiveRecord::Migration
  def self.up
    create_table :cutlers do |t|
      t.string :name
      t.string :site
      t.string :email
      t.string :phone
      t.string :place
      t.text   :description
      t.integer :position
      t.timestamps
    end
  end

  def self.down
    drop_table :cutlers
  end
end
