class AddDeletedAtToUserStoreRoles < ActiveRecord::Migration
  def change
    add_column :user_store_roles, :deleted_at, :datetime
    add_index :user_store_roles, :deleted_at
  end
end
