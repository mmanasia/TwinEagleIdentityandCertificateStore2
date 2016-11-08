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

ActiveRecord::Schema.define(version: 20161108081223) do

  create_table "cert_source_links", force: :cascade do |t|
    t.integer  "source_link_id"
    t.integer  "cert_store_id"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "cert_store_roles", force: :cascade do |t|
    t.integer  "role_id"
    t.integer  "cert_store_id"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "cert_stores", force: :cascade do |t|
    t.string   "CertStoreName"
    t.string   "CertStoreDescription"
    t.string   "CertStorePassword"
    t.datetime "CertStoreExpirationDate"
    t.string   "unc"
    t.string   "MimeType"
    t.integer  "source_id"
    t.integer  "environment_id"
    t.integer  "identity_type_id"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "certificates", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "password"
    t.datetime "expiration"
    t.string   "unc"
    t.string   "mimetype"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "environments", force: :cascade do |t|
    t.string   "EnvironmentName"
    t.string   "EnvironmentDescription"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "identity_types", force: :cascade do |t|
    t.string   "IdentityTypeName"
    t.string   "IdentityTypeDescription"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "member_groups", force: :cascade do |t|
    t.integer  "NetworkUser_id"
    t.integer  "UserGroup_id"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "network_users", force: :cascade do |t|
    t.string   "NetworkFirstName"
    t.string   "NetworkLastName"
    t.string   "Email"
    t.string   "NetworkUsername"
    t.string   "NetworkPassword"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username",               default: "", null: false
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

  add_index "network_users", ["reset_password_token"], name: "index_network_users_on_reset_password_token", unique: true
  add_index "network_users", ["username"], name: "index_network_users_on_username", unique: true

  create_table "roles", force: :cascade do |t|
    t.string   "RoleDescription"
    t.integer  "source_id"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "source_links", force: :cascade do |t|
    t.string   "Hyperlink"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "sources", force: :cascade do |t|
    t.string   "SourceDescription"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "store_accesses", force: :cascade do |t|
    t.string   "NetworkId"
    t.integer  "user_store_id"
    t.integer  "cert_store_id"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "teics_audit_logs", force: :cascade do |t|
    t.integer  "RecordId"
    t.string   "TableName"
    t.string   "Attribute"
    t.string   "PreviousValue"
    t.string   "CurrentValue"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_access_audit_logs", force: :cascade do |t|
    t.integer  "RecordId"
    t.string   "TableName"
    t.string   "Attribute"
    t.string   "PreviousValue"
    t.string   "CurrentValue"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_groups", force: :cascade do |t|
    t.string   "UserGroupName"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_source_links", force: :cascade do |t|
    t.integer  "source_link_id"
    t.integer  "user_store_id"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_store_roles", force: :cascade do |t|
    t.integer  "role_id"
    t.integer  "user_store_id"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_stores", force: :cascade do |t|
    t.string   "UserStoreName"
    t.string   "UserStorePassword"
    t.datetime "UserStoreExpirationDate"
    t.integer  "source_id"
    t.integer  "environment_id"
    t.integer  "identity_type_id"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
