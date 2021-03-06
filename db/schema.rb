# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131202105632) do

  create_table "appointments", force: true do |t|
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.datetime "dateit"
    t.string   "status",     default: "pending"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assistants", force: true do |t|
    t.string   "name"
    t.string   "gender",            limit: 1
    t.datetime "date_of_birth"
    t.string   "permanent_address"
    t.string   "email"
    t.string   "education"
    t.integer  "doctors_id"
    t.string   "biodata"
    t.integer  "salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assistants_users", force: true do |t|
    t.integer "assistant_id"
    t.integer "user_id"
  end

  add_index "assistants_users", ["assistant_id", "user_id"], name: "index_assistants_users_on_assistant_id_and_user_id", using: :btree

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diagnostics", force: true do |t|
    t.string   "name"
    t.text     "comments"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diags", force: true do |t|
    t.string   "name"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diags_prescriptions", force: true do |t|
    t.integer "diag_id"
    t.integer "prescription_id"
  end

  add_index "diags_prescriptions", ["diag_id", "prescription_id"], name: "index_diags_prescriptions_on_diag_id_and_prescription_id", using: :btree

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.string   "gender",             limit: 1
    t.datetime "date_of_birth"
    t.string   "address"
    t.string   "qualification"
    t.string   "education"
    t.string   "specialised_fields"
    t.integer  "experience_years"
    t.integer  "salary"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "contact_number"
  end

  create_table "doctors_users", force: true do |t|
    t.integer "doctor_id"
    t.integer "user_id"
  end

  add_index "doctors_users", ["doctor_id", "user_id"], name: "index_doctors_users_on_doctor_id_and_user_id", using: :btree

  create_table "favourites", force: true do |t|
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medicines", force: true do |t|
    t.text     "name"
    t.integer  "quantity"
    t.string   "sigcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medicines_prescriptions", force: true do |t|
    t.integer "medicine_id"
    t.integer "prescription_id"
  end

  add_index "medicines_prescriptions", ["medicine_id", "prescription_id"], name: "index_medicines_prescriptions_on_medicine_id_and_prescription_id", using: :btree

  create_table "meds", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", force: true do |t|
    t.integer  "user_id"
    t.text     "notification"
    t.text     "links"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "name"
    t.string   "gender",         limit: 1
    t.integer  "age"
    t.string   "address"
    t.string   "contact_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients_users", force: true do |t|
    t.integer "patient_id"
    t.integer "user_id"
  end

  add_index "patients_users", ["patient_id", "user_id"], name: "index_patients_users_on_patient_id_and_user_id", using: :btree

  create_table "permissions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions_roles", force: true do |t|
    t.integer "permission_id"
    t.integer "role_id"
  end

  add_index "permissions_roles", ["permission_id", "role_id"], name: "index_permissions_roles_on_permission_id_and_role_id", using: :btree

  create_table "prescriptions", force: true do |t|
    t.integer  "appointment_id"
    t.string   "problem"
    t.string   "prognosis"
    t.string   "diagnostictest"
    t.string   "drugs"
    t.string   "diagnostictest_result"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", force: true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["role_id", "user_id"], name: "index_roles_users_on_role_id_and_user_id", using: :btree

  create_table "sigcodes", force: true do |t|
    t.string   "name"
    t.string   "meaning"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialisations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "salt"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
