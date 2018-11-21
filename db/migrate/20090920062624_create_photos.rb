class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string  :flickr_server
      t.string  :flickr_key
      t.string  :flickr_secret
      t.string  :flickr_farm
      t.integer :level
      t.references :imageable, :polymorphic => true
      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
