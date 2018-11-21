class CreateOrderItems < ActiveRecord::Migration
  def self.up
    create_table :order_items do |t|
      t.integer   :order_id
      t.integer   :product_id
      t.integer   :size_id
      t.string    :surname
      t.boolean   :junction
      t.boolean   :history
      t.string    :description
      t.integer   :item_count, :default => 1
      t.decimal   :value, :precision => 14, :scale => 2
      t.timestamps
    end
  end

  def self.down
    drop_table :order_items
  end
end
