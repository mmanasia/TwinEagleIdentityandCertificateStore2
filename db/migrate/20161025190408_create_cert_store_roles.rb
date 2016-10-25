class CreateCertStoreRoles < ActiveRecord::Migration
  def change
    create_table :cert_store_roles do |t|
      t.integer :Role_id
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
