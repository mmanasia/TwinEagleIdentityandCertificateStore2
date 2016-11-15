class AddUserGroupIdToUserSourceLinks < ActiveRecord::Migration
  def change
    add_reference :user_source_links, :user_group, index: true, foreign_key: true
  end
end
