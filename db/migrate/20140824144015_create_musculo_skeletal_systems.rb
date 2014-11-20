class CreateMusculoSkeletalSystems < ActiveRecord::Migration
  def change
    create_table :musculo_skeletal_systems do |t|
      t.string :upper_extremity
      t.string :lower_extremity
      t.string :others

      t.timestamps
    end
  end
end
