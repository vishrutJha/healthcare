class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :name
      t.string :trade_name
      t.string :indication
      t.string :contra_indication
      t.string :dosage
      t.string :side_effect

      t.timestamps
    end
  end
end
