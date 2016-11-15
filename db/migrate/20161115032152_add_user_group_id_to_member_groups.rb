class AddUserGroupIdToMemberGroups < ActiveRecord::Migration
  def change
    add_reference :member_groups, :user_group, index: true, foreign_key: true
  end
end
