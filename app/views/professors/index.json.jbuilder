json.array!(@professors) do |professor|
  json.extract! professor, :id, :name, :register_number, :status, :formation
  json.url professor_url(professor, format: :json)
end
