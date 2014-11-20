json.array!(@systemic_exams) do |systemic_exam|
  json.extract! systemic_exam, :id, :RespiratorySystem_id, :GastroIntestinalSystem_id, :CardioVascularSystem_id, :NervousSystem_id, :Eye_id, :ENT_id, :Skin_id, :GenitoUrinalSystem_id, :MusculoSkeletalSystem_id
  json.url systemic_exam_url(systemic_exam, format: :json)
end
