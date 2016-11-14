class AddDeletedAtToCertStores < ActiveRecord::Migration
  def change
    add_column :cert_stores, :deleted_at, :datetime
    add_index :cert_stores, :deleted_at
  end
end
