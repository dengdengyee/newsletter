class CreateNewsLetters < ActiveRecord::Migration[8.0]
  def change
    create_table :news_letters do |t|
      t.references :email_template, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
