# Preview all emails at http://localhost:3000/rails/mailers/generic_mailer
class GenericMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/generic_mailer/custom_email
  def custom_email
    GenericMailer.custom_email
  end
end
