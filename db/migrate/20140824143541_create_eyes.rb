class CreateEyes < ActiveRecord::Migration
  def change
    create_table :eyes do |t|
      t.string :lids
      t.string :conjunctiva
      t.string :cornea
      t.string :distant_vision
      t.string :near_vision
      t.string :cover_test

      t.timestamps
    end
  end
end
