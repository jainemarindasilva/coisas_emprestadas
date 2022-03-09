class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end  

  def new
    @contact = Contact.new
  end

  def create
    Contact.create(contact_params)
  end

  def edit
    @contact = Contact.find(params[:id])
    #byebug
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(contact_params)
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    #redirect_to root_path, status: :see_other 
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :phone_number, :address)
    end
end
