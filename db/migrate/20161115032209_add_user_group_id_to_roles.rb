class AddUserGroupIdToRoles < ActiveRecord::Migration
  def change
    add_reference :roles, :user_group, index: true, foreign_key: true
  end
end
