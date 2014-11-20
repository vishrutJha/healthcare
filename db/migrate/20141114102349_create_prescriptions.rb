class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.date :date

      t.timestamps
    end
  end
end
