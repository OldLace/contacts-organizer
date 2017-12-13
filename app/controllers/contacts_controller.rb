class ContactsController < ApplicationController
  def show
    @contact = Contact.find(params[:id])
  end

  def index
    @contacts = Contact.all
  end

  # def show
  #   @contact = Contact.find(params[:id])
  # end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "New Contact Added!!"
      redirect_to contacts_path
    else
      render 'new'
    end
  end

  private

 def contact_params
   params.require(:contact).permit(:first_name, :last_name, :phone, :email, :address)
 end
end
