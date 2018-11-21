class CreateSizes < ActiveRecord::Migration
  def self.up
    create_table :sizes do |t|
      t.decimal :weight,    :precision => 3, :scale => 2, :null => false, :default => 1
      t.decimal :width,     :precision => 6, :scale => 2
      t.decimal :height,    :precision => 6, :scale => 2
      t.decimal :diameter,  :precision => 6, :scale => 2
      t.decimal :value,     :precision => 14, :scale => 2
      t.integer :item_count, :default => -1
      t.integer :product_id
      t.timestamps
    end
  end

  def self.down
    drop_table :sizes
  end
end
