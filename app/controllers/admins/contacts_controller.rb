class Admins::ContactsController < ApplicationController

  def index
    @contacts = Contact.page(params[:page]).per(8).order('created_at DESC')
    @contact = Contact.find_by(id: params[:contact_id])
  end

  private
    def contact_params
      params.require(:contact).permit(:title, :message)
    end
end
