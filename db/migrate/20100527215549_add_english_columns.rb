class AddEnglishColumns < ActiveRecord::Migration
  def self.up
    add_column :products, :name_en, :string
    add_column :products, :description_en, :text
    add_column :cutlers, :description_en, :text
    add_column :comments, :resume_en, :string
    add_column :comments, :message_en, :text
  end

  def self.down
    remove_column :comments, :message_en
    remove_column :comments, :resume_en
    remove_column :cutlers, :description_en
    remove_column :products, :description_en
    remove_column :products, :name_en
  end
end
