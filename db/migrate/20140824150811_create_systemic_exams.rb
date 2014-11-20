class CreateSystemicExams < ActiveRecord::Migration
  def change
    create_table :systemic_exams do |t|
      t.references :RespiratorySystem, index: true
      t.references :GastroIntestinalSystem, index: true
      t.references :CardioVascularSystem, index: true
      t.references :NervousSystem, index: true
      t.references :Eye, index: true
      t.references :ENT, index: true
      t.references :Skin, index: true
      t.references :GenitoUrinalSystem, index: true
      t.references :MusculoSkeletalSystem, index: true

      t.timestamps
    end
  end
end
