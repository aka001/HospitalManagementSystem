class CreatePrescriptionsMedicinesJoin < ActiveRecord::Migration
  def change
    create_table :medicines_prescriptions do |t|
    	t.integer "medicine_id"
	    t.integer "prescription_id"
    end
    add_index :medicines_prescriptions, ["medicine_id","prescription_id"]
  end
end
