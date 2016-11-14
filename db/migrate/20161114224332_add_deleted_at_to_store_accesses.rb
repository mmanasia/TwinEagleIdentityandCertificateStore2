class AddDeletedAtToStoreAccesses < ActiveRecord::Migration
  def change
    add_column :store_accesses, :deleted_at, :datetime
    add_index :store_accesses, :deleted_at
  end
end
