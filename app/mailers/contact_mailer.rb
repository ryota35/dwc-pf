class ContactMailer < ApplicationMailer

  def contact_mail(contact)
    @contact = contact
    mail to: ENV['EMAIL_ADDRESS2'], subject: "お問い合わせ2"
  end

end
