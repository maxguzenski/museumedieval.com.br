class ContactController < ApplicationController
  def show
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      ApplicationMailer.deliver_contact_email @contact
      render :update do |page|
        page[:contact_form].replace_html :partial => 'email_sent'
      end
    else
      render :update do |page|
        page[:contact_form].replace_html :partial => 'contact_form'
      end
    end
  end
end
