class User < ActiveRecord::Base
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => 'e-mail não é valido'

  validates_presence_of :password
  validates_confirmation_of :password

  belongs_to :client
  
  before_validation_on_create :create_token

  def self.authenticate(email, password)
    unless email.nil? || password.nil?
      find :first, :conditions => ["email = ? and password = ?", email, password]
    end
  end
  
  def self.authenticate_from_token(token)
    unless token.nil?
      find :first, :conditions => ["token = ?", token]
    end
  end
  
  private
    def create_token
      self.token = ActiveSupport::SecureRandom.hex(8)
    end
  
end
