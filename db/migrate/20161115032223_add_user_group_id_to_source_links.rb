class AddUserGroupIdToSourceLinks < ActiveRecord::Migration
  def change
    add_reference :source_links, :user_group, index: true, foreign_key: true
  end
end
