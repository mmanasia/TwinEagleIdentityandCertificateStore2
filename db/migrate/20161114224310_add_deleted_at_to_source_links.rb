class AddDeletedAtToSourceLinks < ActiveRecord::Migration
  def change
    add_column :source_links, :deleted_at, :datetime
    add_index :source_links, :deleted_at
  end
end
