# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141203035148) do

  create_table "cardio_vascular_systems", force: true do |t|
    t.boolean  "apex_beat_outward"
    t.boolean  "thrills"
    t.integer  "heart_sounds"
    t.string   "systolic_murmer"
    t.string   "diastolic_murmer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diagnoses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diagnoses_drugs", id: false, force: true do |t|
    t.integer "diagnosis_id", null: false
    t.integer "drug_id",      null: false
  end

  add_index "diagnoses_drugs", ["diagnosis_id", "drug_id"], name: "index_diagnoses_drugs_on_diagnosis_id_and_drug_id", using: :btree
  add_index "diagnoses_drugs", ["drug_id", "diagnosis_id"], name: "index_diagnoses_drugs_on_drug_id_and_diagnosis_id", using: :btree

  create_table "drugs", force: true do |t|
    t.string   "name"
    t.string   "trade_name"
    t.string   "indication"
    t.string   "contra_indication"
    t.string   "dosage"
    t.string   "side_effect"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drugs_prescriptions", id: false, force: true do |t|
    t.integer "drug_id",         null: false
    t.integer "prescription_id", null: false
  end

  add_index "drugs_prescriptions", ["drug_id", "prescription_id"], name: "index_drugs_prescriptions_on_drug_id_and_prescription_id", using: :btree
  add_index "drugs_prescriptions", ["prescription_id", "drug_id"], name: "index_drugs_prescriptions_on_prescription_id_and_drug_id", using: :btree

  create_table "ents", force: true do |t|
    t.string   "external_ear"
    t.string   "tympanic_membrane"
    t.string   "mastroid"
    t.string   "hearing"
    t.string   "frontal_cynus"
    t.string   "maxil_cynus"
    t.string   "nose"
    t.string   "throat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eyes", force: true do |t|
    t.string   "lids"
    t.string   "conjunctiva"
    t.string   "cornea"
    t.string   "distant_vision"
    t.string   "near_vision"
    t.string   "cover_test"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gastro_intestinal_systems", force: true do |t|
    t.boolean  "ascites"
    t.boolean  "abd_movement_absent"
    t.boolean  "visible_peristalsis"
    t.string   "tenderness"
    t.boolean  "rebound_tenderness"
    t.boolean  "abd_rigidity"
    t.string   "mass_abdomen"
    t.string   "hepatomegaly"
    t.string   "gall_bladder"
    t.boolean  "murphy_sign"
    t.string   "splenomegaly"
    t.boolean  "renal_enlargement"
    t.boolean  "urinary_bladder_extended"
    t.boolean  "shifting_dullness"
    t.boolean  "bowel_sound_exaggereted"
    t.boolean  "silent_abdomed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "general_exams", force: true do |t|
    t.boolean  "icterus"
    t.boolean  "pallor"
    t.boolean  "clubbing"
    t.boolean  "cynosis"
    t.string   "oedema"
    t.string   "lymphadenitis"
    t.string   "higher_functions"
    t.boolean  "dehydration"
    t.string   "bp"
    t.string   "pulse"
    t.string   "image_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genito_urinary_systems", force: true do |t|
    t.string   "genitals"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "musculo_skeletal_systems", force: true do |t|
    t.string   "upper_extremity"
    t.string   "lower_extremity"
    t.string   "others"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nervous_systems", force: true do |t|
    t.string   "level_of_consciousness"
    t.string   "glasgow_score"
    t.string   "higher_functions"
    t.boolean  "neck"
    t.string   "cranial_nerves"
    t.string   "sensory_functions"
    t.string   "motor_functions"
    t.boolean  "abdominal_reflexes"
    t.boolean  "joint_reflexes"
    t.boolean  "planter_reflex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient_prescriptions", force: true do |t|
    t.integer  "patient_id"
    t.integer  "prescription_id"
    t.integer  "diagnosis_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patient_prescriptions", ["diagnosis_id"], name: "index_patient_prescriptions_on_diagnosis_id", using: :btree
  add_index "patient_prescriptions", ["patient_id"], name: "index_patient_prescriptions_on_patient_id", using: :btree
  add_index "patient_prescriptions", ["prescription_id"], name: "index_patient_prescriptions_on_prescription_id", using: :btree

  create_table "patients", force: true do |t|
    t.string   "name"
    t.integer  "sex"
    t.integer  "age"
    t.string   "complaints"
    t.string   "center"
    t.string   "history"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prescriptions", force: true do |t|
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "respiratory_systems", force: true do |t|
    t.boolean  "breathing_vesicular"
    t.boolean  "breathing_brinchial"
    t.boolean  "coarse_crepts"
    t.boolean  "fine_crepts"
    t.string   "rhoncii"
    t.string   "pleural_rub"
    t.integer  "percussion"
    t.boolean  "vocal_resonance_altered"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skins", force: true do |t|
    t.string   "pigmentation_rash"
    t.string   "erruptions"
    t.string   "other_lesions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "systemic_exams", force: true do |t|
    t.integer  "RespiratorySystem_id"
    t.integer  "GastroIntestinalSystem_id"
    t.integer  "CardioVascularSystem_id"
    t.integer  "NervousSystem_id"
    t.integer  "Eye_id"
    t.integer  "ENT_id"
    t.integer  "Skin_id"
    t.integer  "GenitoUrinalSystem_id"
    t.integer  "MusculoSkeletalSystem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "systemic_exams", ["CardioVascularSystem_id"], name: "index_systemic_exams_on_CardioVascularSystem_id", using: :btree
  add_index "systemic_exams", ["ENT_id"], name: "index_systemic_exams_on_ENT_id", using: :btree
  add_index "systemic_exams", ["Eye_id"], name: "index_systemic_exams_on_Eye_id", using: :btree
  add_index "systemic_exams", ["GastroIntestinalSystem_id"], name: "index_systemic_exams_on_GastroIntestinalSystem_id", using: :btree
  add_index "systemic_exams", ["GenitoUrinalSystem_id"], name: "index_systemic_exams_on_GenitoUrinalSystem_id", using: :btree
  add_index "systemic_exams", ["MusculoSkeletalSystem_id"], name: "index_systemic_exams_on_MusculoSkeletalSystem_id", using: :btree
  add_index "systemic_exams", ["NervousSystem_id"], name: "index_systemic_exams_on_NervousSystem_id", using: :btree
  add_index "systemic_exams", ["RespiratorySystem_id"], name: "index_systemic_exams_on_RespiratorySystem_id", using: :btree
  add_index "systemic_exams", ["Skin_id"], name: "index_systemic_exams_on_Skin_id", using: :btree

end
