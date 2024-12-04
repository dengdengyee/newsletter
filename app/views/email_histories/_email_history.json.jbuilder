json.extract! email_history, :id, :receiver, :subject, :body, :created_at, :updated_at
json.url email_history_url(email_history, format: :json)
