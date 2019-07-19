class ContactsController < ApplicationController
  def index
    @contacts = Contacts.all
  end

  def show
    @contacts = Recipe.find_by(id: params[:id])
    render 'show.html.erb'
  end
  def new
    @users = User.all
    render 'new.html.erb'
    
  end

  def create
    @contact = Product.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    phone_number: params[:phone_number],
    user_id: params[:user_id]
      )
    @contact.save

  end
  def edit
    @contact = Contact.find_by(id: params[:id])
    render 'edit.html.erb'
  end
  def update
    @contact = Contact.find_by(id: params[:id])
    @contact = Product.update(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    phone_number: params[:phone_number],
    user_id: params[:user_id]
)
  end
  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    redirect_to "/contacts"
  end
end
