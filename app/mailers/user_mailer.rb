class UserMailer < ApplicationMailer
  default from: 'acanthisdev@gmail.com'

  def contact_email_notif_for_user
    @contact = Contact.new
    @contact = params[:contact]
    mail(to: @contact.email, subject: "Acanthis - Prise de contact effectuée")
  end

  def contact_email
    @contact = Contact.new
    @contact = params[:contact]
    mail(to: 'acanthisdev@gmail.com', subject: "(n°#{@contact.id}) Acanthis - Demande de contact par #{@contact.name}")
  end
end

# (id: 204, name: "Jean Valjean", email: "jean@valjean.com", content: "Bonjour, je voudrais manger du pain", phone: "06 70 87 65 34")
