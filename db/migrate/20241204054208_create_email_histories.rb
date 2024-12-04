class CreateEmailHistories < ActiveRecord::Migration[8.0]
  def change
    create_table :email_histories do |t|
      t.string :receiver
      t.string :subject
      t.string :body

      t.timestamps
    end
  end
end
