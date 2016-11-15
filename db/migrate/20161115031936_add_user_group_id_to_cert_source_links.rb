class AddUserGroupIdToCertSourceLinks < ActiveRecord::Migration
  def change
    add_reference :cert_source_links, :user_group, index: true, foreign_key: true
  end
end
