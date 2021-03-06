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

ActiveRecord::Schema.define(version: 20161217235325) do

  create_table "admin_credentials", force: :cascade do |t|
    t.string   "email",                    default: "",      null: false
    t.string   "encrypted_password",       default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",            default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "provider",                 default: "email", null: false
    t.string   "uid",                      default: "",      null: false
    t.text     "tokens"
    t.float    "travel_metric",            default: 0.23
    t.float    "sport_metric",             default: 0.03
    t.float    "personal_projects_metric", default: 0.23
    t.float    "voluntary_metric",         default: 0.08
    t.float    "achievements_metric",      default: 0.06
    t.float    "passion_metric",           default: 0.06
    t.float    "study_metric",             default: 0.11
    t.float    "work_metric",              default: 0.11
    t.float    "self_reflection_metric",   default: 0.11
  end

  add_index "admin_credentials", ["email"], name: "index_admin_credentials_on_email", unique: true
  add_index "admin_credentials", ["reset_password_token"], name: "index_admin_credentials_on_reset_password_token", unique: true
  add_index "admin_credentials", ["uid", "provider"], name: "index_admin_credentials_on_uid_and_provider", unique: true

  create_table "admins", force: :cascade do |t|
    t.string   "api_auth_token"
    t.string   "email"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "answers", force: :cascade do |t|
    t.text     "text_answer"
    t.string   "data_type"
    t.integer  "question_id"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.datetime "video_updated_at"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"
  add_index "answers", ["user_id"], name: "index_answers_on_user_id"

  create_table "awards", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.date     "date"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "awards", ["user_id"], name: "index_awards_on_user_id"

  create_table "customs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "datatype"
  end

  add_index "customs", ["user_id"], name: "index_customs_on_user_id"

  create_table "educations", force: :cascade do |t|
    t.date     "start"
    t.boolean  "current"
    t.string   "degree"
    t.string   "school"
    t.float    "gpa"
    t.string   "major"
    t.string   "minor"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "end_date"
  end

  add_index "educations", ["user_id"], name: "index_educations_on_user_id"

  create_table "experiences", force: :cascade do |t|
    t.date     "start"
    t.boolean  "current"
    t.string   "title"
    t.string   "company"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "end_date"
  end

  add_index "experiences", ["user_id"], name: "index_experiences_on_user_id"

  create_table "extracurriculars", force: :cascade do |t|
    t.date     "start"
    t.string   "organization"
    t.boolean  "current"
    t.string   "position"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.date     "end_date"
  end

  add_index "extracurriculars", ["user_id"], name: "index_extracurriculars_on_user_id"

  create_table "questions", force: :cascade do |t|
    t.string   "question_type"
    t.string   "prompt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "user_credentials", force: :cascade do |t|
    t.string   "email",                  default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.text     "tokens"
  end

  add_index "user_credentials", ["email"], name: "index_user_credentials_on_email", unique: true
  add_index "user_credentials", ["reset_password_token"], name: "index_user_credentials_on_reset_password_token", unique: true
  add_index "user_credentials", ["uid", "provider"], name: "index_user_credentials_on_uid_and_provider", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "dob"
    t.integer  "phone",                   limit: 8
    t.string   "email"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zipcode"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.boolean  "submitted"
    t.float    "travel_score",                      default: 0.0
    t.float    "sport_score",                       default: 0.0
    t.float    "personal_projects_score",           default: 0.0
    t.float    "voluntary_score",                   default: 0.0
    t.float    "achievements_score",                default: 0.0
    t.float    "passion_score",                     default: 0.0
    t.float    "study_score",                       default: 0.0
    t.float    "work_score",                        default: 0.0
    t.float    "self_reflection_score",             default: 0.0
    t.integer  "user_credential_id"
  end

  add_index "users", ["user_credential_id"], name: "index_users_on_user_credential_id"

end
