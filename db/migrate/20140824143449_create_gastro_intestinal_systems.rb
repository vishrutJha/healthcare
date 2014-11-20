class CreateGastroIntestinalSystems < ActiveRecord::Migration
  def change
    create_table :gastro_intestinal_systems do |t|
      t.boolean :ascites
      t.boolean :abd_movement_absent
      t.boolean :visible_peristalsis
      t.string :tenderness
      t.boolean :rebound_tenderness
      t.boolean :abd_rigidity
      t.string :mass_abdomen
      t.string :hepatomegaly
      t.string :gall_bladder
      t.boolean :murphy_sign
      t.string :splenomegaly
      t.boolean :renal_enlargement
      t.boolean :urinary_bladder_extended
      t.boolean :shifting_dullness
      t.boolean :bowel_sound_exaggereted
      t.boolean :silent_abdomed

      t.timestamps
    end
  end
end
