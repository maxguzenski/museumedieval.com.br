class Cutler < ActiveRecord::Base
  has_many :photos, :as => :imageable

  has_friendly_id :name, :use_slug => true, :strip_diacritics => true
  
  validates_presence_of :name

  def main_photo
    photos.detect {|p| p.level == 0 }
  end

  def second_photo
    photos.detect {|p| p.level == 1 }
  end

  def localized_description
    return description_en if I18n.locale == :en && !description_en.nil?
    return description    
  end


end
