class AddUserGroupIdToCertStores < ActiveRecord::Migration
  def change
    add_reference :cert_stores, :user_group, index: true, foreign_key: true
  end
end
