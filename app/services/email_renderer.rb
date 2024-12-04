# there's only two email_template variables: subscriber name and email body.

class EmailRenderer
  def initialize(email_template, subscriber_name, email_body)
    @email_template = email_template
    @subscriber_name = subscriber_name
    @email_body = email_body
  end

  def render_title
    @email_template.title.gsub("{{ subscriber_name }}", @subscriber_name)
  end

  def render_body
    body = @email_template.body.gsub("{{ subscriber_name }}", @subscriber_name)
    body = body.gsub("{{ email_body }}", @email_body)
    puts body
    body.html_safe
  end
end
