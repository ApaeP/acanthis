class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      if verify_recaptcha(model: @contact)
        UserMailer.with(contact: @contact).contact_email_notif_for_user.deliver_later
        UserMailer.with(contact: @contact).contact_email.deliver_later
        respond_to do |format|
          format.html { redirect_to root_path }
          format.js
        end
      else
        @contact.destroy
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :content)
  end
end
