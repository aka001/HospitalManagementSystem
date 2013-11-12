class CreateAssistantsUsersJoin < ActiveRecord::Migration
  def change
    create_table :assistants_users do |t|
      t.integer 'assistant_id'
      t.integer 'user_id'
    end
    add_index :assistants_users, ["assistant_id", "user_id"]
  end
end
