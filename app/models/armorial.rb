class Armorial < ActiveRecord::Base
  validates_presence_of :name, :line
  validates_uniqueness_of :name
  has_many :families
end
