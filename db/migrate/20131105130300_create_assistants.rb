class CreateAssistants < ActiveRecord::Migration
  def change
    create_table :assistants do |t|
      t.string :name
      t.string :gender, :limit=>1
      t.datetime :date_of_birth
      t.string :permanent_address
      t.string  :email
      t.string :education
      t.belongs_to :doctors
      t.string :biodata
      t.integer :salary
      t.timestamps
    end
  end
end
