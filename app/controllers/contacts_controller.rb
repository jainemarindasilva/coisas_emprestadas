class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def create

  end
end
