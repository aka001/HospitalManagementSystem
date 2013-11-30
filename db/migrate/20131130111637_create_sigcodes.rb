class CreateSigcodes < ActiveRecord::Migration
  def change
    create_table :sigcodes do |t|
      t.string :name
      t.timestamps
    end
  end
end
