json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :sex, :age, :complaints, :center, :history
  json.url patient_url(patient, format: :json)
end
