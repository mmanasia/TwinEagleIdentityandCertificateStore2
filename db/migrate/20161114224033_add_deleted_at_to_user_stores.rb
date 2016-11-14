class AddDeletedAtToUserStores < ActiveRecord::Migration
  def change
    add_column :user_stores, :deleted_at, :datetime
    add_index :user_stores, :deleted_at
  end
end
