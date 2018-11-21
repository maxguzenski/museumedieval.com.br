class Photo < ActiveRecord::Base
  belongs_to :imageable, :polymorphic => true

  validates_presence_of :flickr_key
end
