class AddUserGroupIdToCertStoreRoles < ActiveRecord::Migration
  def change
    add_reference :cert_store_roles, :user_group, index: true, foreign_key: true
  end
end
