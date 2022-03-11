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
    newContact = Contact.new(contact_params)
    if newContact.save
      render :new, js: "alert('Contact inserted!');"
    else
      #render json: {errors:  newContact.errors.full_messages}, 
      render :new, status: :not_acceptable
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(contact_params)
    redirect_to :index, status: :see_other
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to :index, status: :see_other
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :phone_number, :address)
    end
end
