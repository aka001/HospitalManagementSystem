class CreateDoctorsUsersJoin < ActiveRecord::Migration
  def change
    create_table :doctors_users do |t|
      t.integer 'doctor_id'
      t.integer 'user_id'
    end
    add_index :doctors_users, ['doctor_id', 'user_id'] 
  end
end
