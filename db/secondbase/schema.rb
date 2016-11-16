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

ActiveRecord::Schema.define(version: 20161115034917) do

  create_table "member_groups", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.integer  "UserGroup_id",     limit: 4
    t.string   "CreatedBy",        limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",   limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "deleted_at"
  end

  add_index "member_groups", ["deleted_at"], name: "index_member_groups_on_deleted_at"

  create_table "user_access_audit_logs", force: :cascade do |t|
    t.integer  "RecordId",         limit: 4
    t.string   "TableName",        limit: 4000
    t.string   "Attribute",        limit: 4000
    t.string   "PreviousValue",    limit: 4000
    t.string   "CurrentValue",     limit: 4000
    t.string   "CreatedBy",        limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",   limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "user_groups", force: :cascade do |t|
    t.string   "UserGroupName",    limit: 4000
    t.string   "CreatedBy",        limit: 4000
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy",   limit: 4000
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.boolean  "admin",                         default: false, null: false
    t.datetime "deleted_at"
  end

  add_index "user_groups", ["deleted_at"], name: "index_user_groups_on_deleted_at"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 4000, default: "", null: false
    t.string   "encrypted_password",     limit: 4000, default: "", null: false
    t.string   "reset_password_token",   limit: 4000
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 4000
    t.string   "last_sign_in_ip",        limit: 4000
    t.integer  "failed_attempts",        limit: 4,    default: 0,  null: false
    t.string   "unlock_token",           limit: 4000
    t.datetime "locked_at"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.integer  "user_group_id",          limit: 4
    t.string   "username",               limit: 4000
    t.string   "first_name",             limit: 4000
    t.string   "last_name",              limit: 4000
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
