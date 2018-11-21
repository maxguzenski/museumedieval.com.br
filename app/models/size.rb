class Size < ActiveRecord::Base
  DOLLAR_PRICE = 1.7
  
  belongs_to :product
  
  validates_presence_of :weight
  validates_presence_of :value
  
  def localized_value
    return value / DOLLAR_PRICE if I18n.locale == :en
    return value
  end
end