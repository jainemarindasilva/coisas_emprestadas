class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def create

  end

  def edit
    id = params[:id]
    @contact = Contact.find(id)
    #byebug
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(params[:contact])
    byebug
  end

end
