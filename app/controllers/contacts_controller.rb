class ContactsController < ApplicationController
  # def one_contact_method
  #   @contact = Contact.find_by(id: params["contacts_id"])
  #   render "one_contact.html.erb"
  # end

  # def show_contacts_method
  #   @contact = Contact.all
  #   render "show.html.erb"
  # end

  def index
      @contacts = current_user.contacts
      render "index.html.erb"
  end 

  def new
    render "new.html.erb"
  end

  def create
    contact = Contact.new(
      first_name: params[:form_first_name],
      middle_name: params[:form_middle_name],
      last_name: params[:form_last_name],
      email: params[:form_email],
      phone_number: params[:form_phone_number],
      user_id: current_user.id
    )
    contact.save 
    render "create.html.erb"
  end
  
  # p Contact.full_name.start_with?("J")
  # redirect_to "/all_j"

end
