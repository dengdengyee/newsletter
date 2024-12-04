class GenericMailer < ApplicationMailer
  after_action :save_email_history

  def custom_email(title, email, body)
    @body = body
    @email = email
    @title = title

    mail(
      to: @email,
      subject: @title
    )
  end

  private

  def save_email_history
    EmailHistory.create!(
      receiver: @email,
      subject: @title,
      body: @body
    )
  end
end
