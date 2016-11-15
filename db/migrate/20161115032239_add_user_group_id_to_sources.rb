class AddUserGroupIdToSources < ActiveRecord::Migration
  def change
    add_reference :sources, :user_group, index: true, foreign_key: true
  end
end
