class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.text :name
      t.integer :quantity
      t.string :sigcode
      t.timestamps
    end
  end
end
