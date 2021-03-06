class UserMailer < ApplicationMailer
  default from: 'acanthisdev@gmail.com'

  def contact_email_notif_for_user
    @contact = Contact.new
    @contact = params[:contact]
    mail(to: @contact.email, subject: "Acanthis - Votre demande de contact")
  end

  def contact_email
    @contact = Contact.new
    @contact = params[:contact]
    mail(to: 'acanthisdev@gmail.com', subject: "Acanthis - Demande de contact par #{@contact.name} (n°#{@contact.id})")
    mail(to: 'acanthis.21@free.fr', subject: "Acanthis - Demande de contact par #{@contact.name} (n°#{@contact.id})")
  end
end
