class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :sex
      t.integer :age
      t.string :complaints
      t.string :center
      t.string :history

      t.timestamps
    end
  end
end
