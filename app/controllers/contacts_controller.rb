class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to contacts_path, notice: "Contact information for #{contact.first_name} has been deleted!!!"
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
      redirect_to contacts_path, notice: "New Contact Added!!"
    else
      render :new
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update_attributes(contact_params)
      redirect_to contact_path(@contact), notice: "Contact Updated!"
    else
      redirect_to contact_path(@contact), notice: "Update Failed!!!"

      #   @errors = @contact.errors.full_messages
    #   render :edit
    end
  end



  private
# allows users to send the specified data, but nothing more
 def contact_params
   params.require(:contact).permit(:first_name, :last_name, :phone, :email, :address)
 end
end
