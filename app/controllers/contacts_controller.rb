class ContactsController < ApplicationController
  def index
    @contacts = Contacts.all
  end

  def show
    @contacts = Recipe.find_by(id: params[:id])
    render 'show.html.erb'
  end
  def create
    @product = Product.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    phone_number: params[:phone_number],
    user_id: params[:user_id]
      )
    @contact.save

  end
  def edit
    
    
  end


end
