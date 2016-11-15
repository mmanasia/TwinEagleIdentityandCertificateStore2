class AddUserGroupIdToStoreAccesses < ActiveRecord::Migration
  def change
    add_reference :store_accesses, :user_group, index: true, foreign_key: true
  end
end
