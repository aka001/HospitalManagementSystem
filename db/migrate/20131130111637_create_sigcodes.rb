class CreateSigcodes < ActiveRecord::Migration
  def change
    create_table :sigcodes do |t|
      t.string :name
      t.string :meaning
      t.timestamps
    end
  end
end
