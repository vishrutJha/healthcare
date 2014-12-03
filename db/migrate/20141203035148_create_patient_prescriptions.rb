class CreatePatientPrescriptions < ActiveRecord::Migration
  def change
    create_table :patient_prescriptions do |t|
      t.references :patient, index: true
      t.references :prescription, index: true
      t.references :diagnosis, index: true

      t.timestamps
    end
  end
end
