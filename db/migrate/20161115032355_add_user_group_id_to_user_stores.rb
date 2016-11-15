class AddUserGroupIdToUserStores < ActiveRecord::Migration
  def change
    add_reference :user_stores, :user_group, index: true, foreign_key: true
  end
end
