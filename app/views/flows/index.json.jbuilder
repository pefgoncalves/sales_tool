json.array!(@flows) do |flow|
  json.extract! flow, :id, :name, :active
  json.url flow_url(flow, format: :json)
end
