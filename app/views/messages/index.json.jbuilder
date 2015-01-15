json.array!(@messages) do |message|
  json.extract! message, :id, :name, :subject, :text, :active
  json.url message_url(message, format: :json)
end
