class AddDeletedAtToCertStoreRoles < ActiveRecord::Migration
  def change
    add_column :cert_store_roles, :deleted_at, :datetime
    add_index :cert_store_roles, :deleted_at
  end
end
