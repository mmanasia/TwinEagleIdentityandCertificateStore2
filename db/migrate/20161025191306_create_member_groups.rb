class CreateMemberGroups < ActiveRecord::Migration
  def change
    create_table :member_groups do |t|
      t.integer :NetworkUser_id
      t.integer :UserGroup_id
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
