class CreateStoreAccesses < ActiveRecord::Migration
  def change
    create_table :store_accesses do |t|
      t.string :NetworkId
      t.integer :UserStore_id
      t.integer :CertStore_id
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
