class AddUserGroupIdToIdentityTypes < ActiveRecord::Migration
  def change
    add_reference :identity_types, :user_group, index: true, foreign_key: true
  end
end
