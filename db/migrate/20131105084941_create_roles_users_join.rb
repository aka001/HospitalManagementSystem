class CreateRolesUsersJoin < ActiveRecord::Migration
  def change
    create_table :roles_users do |t|
      t.integer "role_id"
      t.integer "user_id"
    end
    add_index :roles_users, ["role_id", "user_id"]
  end
end
