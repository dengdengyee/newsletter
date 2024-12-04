# there's only two template variables: subscriber name and email body.

class EmailRenderer
  def initialize(template, template_variables)
    @template = template
    @template_variables = template_variables
  end

  def render_title
    @template.title.gsub("{subscriber_name}", @template_variables[:subscriber_name])
  end

  def render_body
    @template.body.gsub("{subscriber_name}", @template_variables[:subscriber_name])
    @template.body.gsub("{email_body}", @template_variables[:email_body])
  end
end
