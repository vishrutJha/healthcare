class CreateGenitoUrinarySystems < ActiveRecord::Migration
  def change
    create_table :genito_urinary_systems do |t|
      t.string :genitals

      t.timestamps
    end
  end
end
