class NewsLettersController < ApplicationController
  def index
    @news_letters = NewsLetter.all
  end

  def new
    @news_letter = NewsLetter.new
    @email_templates = EmailTemplate.all
  end

  def create
    @news_letter = NewsLetter.new(news_letter_params)
    @news_letter.save


    # send to all subscribers
    Subscriber.all.each do |subscriber|
      email_renderer = EmailRenderer.new(@news_letter.email_template, subscriber.name, @news_letter.body)

      GenericMailer.custom_email(
        email_renderer.render_title,
        subscriber.email,
        email_renderer.render_body
      ).deliver_now
    end

    redirect_to news_letters_path
  end

  def preview
    template = EmailTemplate.find(params[:template_id])
    # Using a sample subscriber name for preview
    email_renderer = EmailRenderer.new(template, "Sample Subscriber", params[:body])

    render json: {
      title: email_renderer.render_title,
      body: email_renderer.render_body
    }
  end

  private

  def news_letter_params
    params.require(:news_letter).permit(:email_template_id, :body)
  end
end
