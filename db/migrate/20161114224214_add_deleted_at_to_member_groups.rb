class AddDeletedAtToMemberGroups < ActiveRecord::Migration
  def change
    add_column :member_groups, :deleted_at, :datetime
    add_index :member_groups, :deleted_at
  end
end
