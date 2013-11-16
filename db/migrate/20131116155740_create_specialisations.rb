class CreateSpecialisations < ActiveRecord::Migration
  def change
    create_table :specialisations do |t|
      t.string :name

      t.timestamps
    end
  end
end
