class Family < ActiveRecord::Base
  validates_presence_of :name, :armorial
  validates_uniqueness_of :name, :scope => :armorial_id

  belongs_to :armorial

  before_save :ensure_name_is_titleized
  
  def self.find_by_surname surname
    first :conditions => ["name = ? or variatons = ? or variatons like ? or variatons like ? or variatons like ?",
          surname, surname, "#{surname},%", "%, #{surname},%", "%, #{surname}"]
  end

  protected
  def ensure_name_is_titleized
    name.titleize!
    variatons.titleize! unless variatons.nil?
  end

end
