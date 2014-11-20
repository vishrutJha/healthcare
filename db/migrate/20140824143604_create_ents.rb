class CreateEnts < ActiveRecord::Migration
  def change
    create_table :ents do |t|
      t.string :external_ear
      t.string :tympanic_membrane
      t.string :mastroid
      t.string :hearing
      t.string :frontal_cynus
      t.string :maxil_cynus
      t.string :nose
      t.string :throat

      t.timestamps
    end
  end
end
