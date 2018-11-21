class ClientSearch < ActiveRecord::Base
  SEARCH_PRICE = {:'pt-BR' => 15, :en => 9 }
  
  validates_presence_of :surname_1, :name, :email
  
  belongs_to :client
  
  def before_save
    count = 1
    count = count + 1 unless self.surname_2.blank?
    count = count + 1 unless self.surname_3.blank?
    count = count + 1 unless self.surname_4.blank?
    self.price = count * SEARCH_PRICE[I18n.locale]
  end
  
  def validate
    self.errors.add(:surname_1, "Não parece ser um sobrenome") if self.surname_1 =~ /http:/
    self.errors.add(:surname_2, "Não parece ser um sobrenome") if self.surname_2 =~ /http:/
    self.errors.add(:surname_3, "Não parece ser um sobrenome") if self.surname_3 =~ /http:/
  end
  
end
