class ChangeDateFormatInPatient < ActiveRecord::Migration
  def change
    change_column :patients, :contact_number, :string
  end
end
