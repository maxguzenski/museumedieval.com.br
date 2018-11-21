class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer   :rate
      t.string    :name
      t.string    :email
      t.text      :message
      t.date      :visited_at
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
