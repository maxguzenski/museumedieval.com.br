class Client < ActiveRecord::Base
  has_many :orders
  has_many :addresses
  has_many :client_searches
  has_one :user

  accepts_nested_attributes_for :addresses
  accepts_nested_attributes_for :user

  validates_presence_of :name, :addresses
  validates_numericality_of :phone_ddd, :only_integer => true
  validates_numericality_of :phone_number, :only_integer => true

  def phone
    "(#{phone_ddd}) #{phone_number}"
  end


end
