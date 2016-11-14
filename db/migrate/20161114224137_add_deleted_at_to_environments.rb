class AddDeletedAtToEnvironments < ActiveRecord::Migration
  def change
    add_column :environments, :deleted_at, :datetime
    add_index :environments, :deleted_at
  end
end
