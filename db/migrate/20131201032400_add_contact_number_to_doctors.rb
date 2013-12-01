class AddContactNumberToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :contact_number, :string
  end
end
