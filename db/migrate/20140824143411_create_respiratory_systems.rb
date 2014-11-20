class CreateRespiratorySystems < ActiveRecord::Migration
  def change
    create_table :respiratory_systems do |t|
      t.boolean :breathing_vesicular
      t.boolean :breathing_brinchial
      t.boolean :coarse_crepts
      t.boolean :fine_crepts
      t.string :rhoncii
      t.string :pleural_rub
      t.integer :percussion
      t.boolean :vocal_resonance_altered

      t.timestamps
    end
  end
end
