class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :gender, :limit=>1
      t.integer :age
      t.string :address
      t.integer :contact_number
      t.timestamps
    end
  end
end
