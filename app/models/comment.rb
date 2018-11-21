class Comment < ActiveRecord::Base
  validates_presence_of :name, :email, :message, :place
  validates_numericality_of :rate, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5
  
  named_scope :approved, :conditions => {:approved => true},  :order => "created_at desc" 
  
  def resume_or_message
    return attributes["message"] if attributes["resume"].nil? || attributes["resume"].empty?
    return attributes["resume"]
  end
  
  def resume_or_message_en
    return attributes["message_en"] if attributes["resume_en"].nil? || attributes["resume_en"].empty?
    return attributes["resume_en"]    
  end
  
  def localized_resume_or_message
    return resume_or_message_en if I18n.locale == :en && !(resume_or_message_en.nil? || resume_or_message_en.empty?)
    return resume_or_message
  end
end
