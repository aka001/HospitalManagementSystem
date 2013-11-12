class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.datetime :dateit
      t.string :status, :default => "pending"
      t.timestamps
    end
  end
end
