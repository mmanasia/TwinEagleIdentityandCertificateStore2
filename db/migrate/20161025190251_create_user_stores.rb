class CreateUserStores < ActiveRecord::Migration
  def change
    create_table :user_stores do |t|
      t.string :UserStoreName
      t.string :UserStorePassword
      t.datetime :UserStoreExpirationDate
      t.integer :Source_id
      t.integer :Environment_id
      t.integer :IdentityType_id
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
