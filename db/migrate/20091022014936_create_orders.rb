class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string    :transaction_id
      t.string    :status
      t.string    :payment_method
      t.string    :shipping_type
      t.string    :notes
      t.decimal   :shipping, :precision => 14, :scale => 2, :default => 0
      t.timestamp :processed_at
      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
