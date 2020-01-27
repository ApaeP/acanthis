class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def index
    @contacts = Contact.all
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        UserMailer.with(contact: @contact).contact_email_notif_for_user.deliver_later
        UserMailer.with(contact: @contact).contact_email.deliver_later
        format.html { redirect_to root_path }
        format.json { render json: @contact, status: :created }
      else
        format.html { render :new }
        format.json { render json: @contact.errors }
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :content)
  end
end
