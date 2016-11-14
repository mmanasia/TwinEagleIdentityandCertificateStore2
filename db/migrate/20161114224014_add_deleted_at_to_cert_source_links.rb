class AddDeletedAtToCertSourceLinks < ActiveRecord::Migration
  def change
    add_column :cert_source_links, :deleted_at, :datetime
    add_index :cert_source_links, :deleted_at
  end
end
