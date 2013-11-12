class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :gender, :limit => 1
      t.datetime :date_of_birth
      t.string :address
      t.string :qualification
      t.string :education
      t.string :specialised_fields
      t.integer :experience_years
      t.integer :salary

      t.timestamps
    end
  end
end
