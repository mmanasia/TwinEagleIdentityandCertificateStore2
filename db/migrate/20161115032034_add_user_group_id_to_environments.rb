class AddUserGroupIdToEnvironments < ActiveRecord::Migration
  def change
    add_reference :environments, :user_group, index: true, foreign_key: true
  end
end
