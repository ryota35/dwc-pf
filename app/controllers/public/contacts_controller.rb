class Public::ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
      redirect_to contact_path(@contact)
    else
      render "new"
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  private

    def contact_params
      params.require(:contact).permit(:title, :message)
    end

end
