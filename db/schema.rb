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

ActiveRecord::Schema.define(version: 20161113231923) do

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.integer  "user_group_id"
  end

  add_index "cert_source_links", ["user_group_id"], name: "index_cert_source_links_on_user_group_id"

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
    t.integer  "user_group_id"
  end

  add_index "cert_store_roles", ["user_group_id"], name: "index_cert_store_roles_on_user_group_id"

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
    t.integer  "user_group_id"
  end

  add_index "cert_stores", ["user_group_id"], name: "index_cert_stores_on_user_group_id"

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
    t.integer  "user_group_id"
  end

  add_index "environments", ["user_group_id"], name: "index_environments_on_user_group_id"

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
    t.integer  "user_group_id"
  end

  add_index "identity_types", ["user_group_id"], name: "index_identity_types_on_user_group_id"

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
    t.integer  "user_group_id"
  end

  add_index "member_groups", ["user_group_id"], name: "index_member_groups_on_user_group_id"

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
    t.integer  "user_group_id"
  end

  add_index "roles", ["user_group_id"], name: "index_roles_on_user_group_id"

  create_table "source_links", force: :cascade do |t|
    t.string   "Hyperlink"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_group_id"
  end

  add_index "source_links", ["user_group_id"], name: "index_source_links_on_user_group_id"

  create_table "sources", force: :cascade do |t|
    t.string   "SourceDescription"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_group_id"
  end

  add_index "sources", ["user_group_id"], name: "index_sources_on_user_group_id"

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
    t.integer  "user_group_id"
  end

  add_index "store_accesses", ["user_group_id"], name: "index_store_accesses_on_user_group_id"

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
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "admin",            default: false, null: false
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
    t.integer  "user_group_id"
  end

  add_index "user_source_links", ["user_group_id"], name: "index_user_source_links_on_user_group_id"

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
    t.integer  "user_group_id"
  end

  add_index "user_store_roles", ["user_group_id"], name: "index_user_store_roles_on_user_group_id"

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
    t.integer  "user_group_id"
  end

  add_index "user_stores", ["user_group_id"], name: "index_user_stores_on_user_group_id"

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
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "user_group_id"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
