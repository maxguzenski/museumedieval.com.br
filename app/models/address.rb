class Address < ActiveRecord::Base
  belongs_to :client
  validates_presence_of :street, :number, :neighborhood, :zip_code, :city, :country_state
  validates_numericality_of :number, :only_integer => true
end
