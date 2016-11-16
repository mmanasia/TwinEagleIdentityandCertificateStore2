class AddAdminToUserGroup < ActiveRecord::Migration
  def change
    add_column :user_groups, :admin, :boolean, default: false, null: false
  end
end
