class CreateJoinTableDiagnosisDrug < ActiveRecord::Migration
  def change
    create_join_table :diagnoses, :drugs do |t|
      t.index [:diagnosis_id, :drug_id]
      t.index [:drug_id, :diagnosis_id]
    end
  end
end
