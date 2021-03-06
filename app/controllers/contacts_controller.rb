class ContactsController < ApplicationController
  def index
  end

  def new
    @contact = Contact.new
  end

  def send_mail
    name = params[:name]
    email = params[:email]
    message = params[:message]
    ContactMailer.delay.contact_email(name, email, message)
    redirect_to contacts_path, notice: 'Your message has been sent!'
  end
end
