class CreateNervousSystems < ActiveRecord::Migration
  def change
    create_table :nervous_systems do |t|
      t.string :level_of_consciousness
      t.string :glasgow_score
      t.string :higher_functions
      t.boolean :neck
      t.string :cranial_nerves
      t.string :sensory_functions
      t.string :motor_functions
      t.boolean :abdominal_reflexes
      t.boolean :joint_reflexes
      t.boolean :planter_reflex

      t.timestamps
    end
  end
end
