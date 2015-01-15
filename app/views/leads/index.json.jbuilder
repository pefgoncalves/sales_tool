json.array!(@leads) do |lead|
  json.extract! lead, :id, :contact, :company, :status, :email, :phones, :user_id, :flow_id, :extra
  json.url lead_url(lead, format: :json)
end
