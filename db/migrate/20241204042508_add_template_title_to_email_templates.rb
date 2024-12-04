class AddTemplateTitleToEmailTemplates < ActiveRecord::Migration[8.0]
  def change
    add_column :email_templates, :template_title, :text
  end
end
