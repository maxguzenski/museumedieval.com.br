# To change this template, choose Tools | Templates
# and open the template in the editor.

class Contact < ActiveRecord::Base
  validates_presence_of :name, :email, :subject, :message
end
