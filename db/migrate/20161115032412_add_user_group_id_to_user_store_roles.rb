class AddUserGroupIdToUserStoreRoles < ActiveRecord::Migration
  def change
    add_reference :user_store_roles, :user_group, index: true, foreign_key: true
  end
end
