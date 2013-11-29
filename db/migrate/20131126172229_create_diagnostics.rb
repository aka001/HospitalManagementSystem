class CreateDiagnostics < ActiveRecord::Migration
  def change
    create_table :diagnostics do |t|
      t.string :name
      t.text :comments
      t.text :remarks
      t.timestamps
    end
  end
end
