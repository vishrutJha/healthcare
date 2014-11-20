class CreateGeneralExams < ActiveRecord::Migration
  def change
    create_table :general_exams do |t|
      t.boolean :icterus
      t.boolean :pallor
      t.boolean :clubbing
      t.boolean :cynosis
      t.string :oedema
      t.string :lymphadenitis
      t.string :higher_functions
      t.boolean :dehydration
      t.string :bp
      t.string :pulse
      t.string :image_path

      t.timestamps
    end
  end
end
