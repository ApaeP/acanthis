# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def contact_email_notif_for_user
    UserMailer.contact_email_notif_for_user
  end

  def contact_email
    UserMailer.contact_email
  end
end
