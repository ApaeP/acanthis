class UserMailer < ApplicationMailer
  default from: 'acanthisdev@gmail.com'

  def contact_email_notif_for_user
    @contact = params[:contact]
    mail(to: @contact.email, subject: "Acanthis - Prise de contact effectuée (n°#{@contact.id})")
  end

  def contact_email
    @contact = params[:contact]
    mail(to: 'acanthisdev@gmail.com', subject: "Acanthis - Demande de contact par #{@contact.name} (n°#{@contact.id})")
  end
end
