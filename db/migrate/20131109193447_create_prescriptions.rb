class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :appointment_id
      t.string :problem
      t.string :prognosis
      t.string :diagnostictest
      t.string :drugs
      t.string :diagnostictest_result
      t.text :remarks

      t.timestamps
    end
  end
end
