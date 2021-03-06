class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      if verify_recaptcha(model: @contact)
        UserMailer.with(contact: @contact).contact_email.deliver_later
        UserMailer.with(contact: @contact).contact_email_notif_for_user.deliver_later
        respond_to do |format|
          format.html { redirect_to root_path }
          format.js
        end



        # success = verify_recaptcha(action: 'contact', minimum_score: 0.5, secret_key: ENV['RECAPTCHA_SECRET_KEY_V3'])
        # checkbox_success = verify_recaptcha unless success
        # if success || checkbox_success
        #   # Perform action
        # else
        #   if !success
        #     @show_checkbox_recaptcha = true
        #   end
        #   render 'new'
        # end



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
