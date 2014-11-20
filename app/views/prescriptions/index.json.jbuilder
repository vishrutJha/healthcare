json.array!(@prescriptions) do |prescription|
  json.extract! prescription, :id, :date
  json.url prescription_url(prescription, format: :json)
end
