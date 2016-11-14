class AddAdminIdToTables < ActiveRecord::Migration
  def change
    add_reference :cert_stores, :user_group, index: true, foreign_key: true
    add_reference :user_stores, :user_group, index: true, foreign_key: true
    add_reference :sources, :user_group, index: true, foreign_key: true
    add_reference :source_links, :user_group, index: true, foreign_key: true
    add_reference :identity_types, :user_group, index: true, foreign_key: true
    add_reference :environments, :user_group, index: true, foreign_key: true
    add_reference :user_source_links, :user_group, index: true, foreign_key: true
    add_reference :user_store_roles, :user_group, index: true, foreign_key: true
    add_reference :cert_source_links, :user_group, index: true, foreign_key: true
    add_reference :cert_store_roles, :user_group, index: true, foreign_key: true
    add_reference :member_groups, :user_group, index: true, foreign_key: true
    add_reference :roles, :user_group, index: true, foreign_key: true
    add_reference :store_accesses, :user_group, index: true, foreign_key: true

  end
end
