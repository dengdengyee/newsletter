class CreateEmailTemplates < ActiveRecord::Migration[8.0]
  def change
    create_table :email_templates do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end