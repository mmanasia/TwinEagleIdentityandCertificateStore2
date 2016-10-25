class CreateUserStoreRoles < ActiveRecord::Migration
  def change
    create_table :user_store_roles do |t|
      t.integer :Role_id
      t.integer :UserStore_id
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
