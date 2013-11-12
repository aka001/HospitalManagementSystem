class CreatePermisssionsRolesJoin < ActiveRecord::Migration
  def change
    create_table :permissions_roles do |t|
      t.integer "permission_id"
      t.integer "role_id"
    end
    add_index :permissions_roles, ["permission_id", "role_id"]
  end
end
