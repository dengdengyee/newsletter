class RenameTemplateTitleToTemplateNameInEmailTemplates < ActiveRecord::Migration[7.0]
  def change
    rename_column :email_templates, :template_title, :template_name
  end
end
