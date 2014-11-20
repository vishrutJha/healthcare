class CreateJoinTableDrugPrescription < ActiveRecord::Migration
  def change
    create_join_table :drugs, :prescriptions do |t|
      # t.index [:drug_id, :prescription_id]
      # t.index [:prescription_id, :drug_id]
    end
  end
end
