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
  if current_user
    @contacts = current_user.contacts
    render "index.html.erb"
  else
    flash[:warning] = "You must be logged int to see this page!"
    redirect_to "/login"
  end
end 

def new
  @contact = Contact.new
  render "new.html.erb"
end

def create
  @contact = Contact.new(
    first_name: params[:form_first_name],
    middle_name: params[:form_middle_name],
    last_name: params[:form_last_name],
    email: params[:form_email],
    phone_number: params[:form_phone_number],
    user_id: current_user.id
    )
  if @contact.save
    flash[:success] = "Contact Created"
    redirect_to "/contacts/#{@contact.id}"
  else
    render "new.html.erb"
  end
end
  
  # p Contact.full_name.start_with?("J")
  # redirect_to "/all_j"

 end
