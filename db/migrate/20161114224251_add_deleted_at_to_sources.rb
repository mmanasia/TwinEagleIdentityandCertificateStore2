class AddDeletedAtToSources < ActiveRecord::Migration
  def change
    add_column :sources, :deleted_at, :datetime
    add_index :sources, :deleted_at
  end
end
