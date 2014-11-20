class CreateCardioVascularSystems < ActiveRecord::Migration
  def change
    create_table :cardio_vascular_systems do |t|
      t.boolean :apex_beat_outward
      t.boolean :thrills
      t.integer :heart_sounds
      t.string :systolic_murmer
      t.string :diastolic_murmer

      t.timestamps
    end
  end
end
