class CreatePrescriptionsDiagsJoin < ActiveRecord::Migration
  def change
      create_table :diags_prescriptions do |t|
      t.integer "diag_id"
      t.integer "prescription_id"
    end
    add_index :diags_prescriptions, ["diag_id","prescription_id"]
  end
end
