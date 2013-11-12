class CreatePatientsUsersJoin < ActiveRecord::Migration
  def change
    create_table :patients_users do |t|
      t.integer 'patient_id'
      t.integer 'user_id'
    end
    add_index :patients_users, ['patient_id', 'user_id']
  end
end
