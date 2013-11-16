class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.integer :patient_id
      t.integer :doctor_id

      t.timestamps
    end
  end
end
