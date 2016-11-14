class AddDeletedAtToUserSourceLinks < ActiveRecord::Migration
  def change
    add_column :user_source_links, :deleted_at, :datetime
    add_index :user_source_links, :deleted_at
  end
end
