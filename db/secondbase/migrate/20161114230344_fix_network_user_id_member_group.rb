class FixNetworkUserIdMemberGroup < ActiveRecord::Migration
  def change
    change_table :member_groups do |t|
      t.rename :NetworkUser_id, :user_id
    end
  end
end
