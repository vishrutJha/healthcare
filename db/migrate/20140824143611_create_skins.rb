class CreateSkins < ActiveRecord::Migration
  def change
    create_table :skins do |t|
      t.string :pigmentation_rash
      t.string :erruptions
      t.string :other_lesions

      t.timestamps
    end
  end
end
