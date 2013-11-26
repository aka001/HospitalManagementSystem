class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :name
      t.integer :quantity
      t.sigcode :string
      t.timestamps
    end
  end
end
