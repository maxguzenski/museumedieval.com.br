class Product < ActiveRecord::Base  
  has_many :sizes
  has_many :photos, :as => :imageable
  has_many :product_comments, :conditions => ["approved = ?", true], :order => "created_at desc" do
    def rate_average
      return nil if empty?
      average("rate").round
    end
  end
  
  has_friendly_id :name, :use_slug => true, :strip_diacritics => true
  acts_as_taggable_on :tags

  validates_presence_of :name
  validates_presence_of :description
  validates_uniqueness_of :name

  accepts_nested_attributes_for :sizes
  accepts_nested_attributes_for :photos

  def main_photo
    photos.detect {|p| p.level == 0 }
  end
  
  def localized_name
    return name_en if I18n.locale == :en && !name_en.nil?
    return name
  end
  
  def localized_description
    return description_en if I18n.locale == :en && !description_en.nil?
    return description    
  end

end
