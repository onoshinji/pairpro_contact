class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_path
    else
      render :new
    end
  end

  # def index
  #   @contacs = Contact.all
  # end
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :content) #ストロングパラメータにし、さらにprivateメソッド配下にする
  end
end
