class AddDeletedAtToIdentityTypes < ActiveRecord::Migration
  def change
    add_column :identity_types, :deleted_at, :datetime
    add_index :identity_types, :deleted_at
  end
end
