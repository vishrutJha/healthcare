json.array!(@drugs) do |drug|
  json.extract! drug, :id, :name, :tname, :indications, :contra_indication, :dosage, :sideffect
  json.url drug_url(drug, format: :json)
end
