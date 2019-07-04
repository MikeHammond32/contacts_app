class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @contact = Contact.find_by(id: params[:id])
    render 'show.json.jb'
  end
  def create
   @contact = Contact.new(
    {
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      middlename: params[:middlename],
      bio: params[:bio]

    })
   if @contact.save
   render 'create.json.jb'
   else
   render 'error.json.jb'
   end
  end
  def update
    the_id = params[:id]
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.middlename = params[:middlename] || @contact.middlename
    @contact.bio = params[:bio] || @contact.bio
    if @contact.save
    render 'update.json.jb'
    else
    render 'error.json.jb'
    end
  end
  def destroy
  contact = Contact.find_by(:id)
  contact.destroy

  render 'destroy.json.jb'

  end
  

end

