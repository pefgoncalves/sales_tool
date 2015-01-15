json.array!(@groups) do |group|
  json.extract! group, :id, :name, :flow_id, :active
  json.url group_url(group, format: :json)
end
