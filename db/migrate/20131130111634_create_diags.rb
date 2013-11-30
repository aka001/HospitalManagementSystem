class CreateDiags < ActiveRecord::Migration
  def change
    create_table :diags do |t|
      t.string :name
      t.text :comments
      t.timestamps
    end
  end
end
