class CreateCertStores < ActiveRecord::Migration
  def change
    create_table :cert_stores do |t|
      t.string :CertStoreName
      t.string :CertStoreDescription
      t.string :CertStorePassword
      t.datetime :CertStoreExpirationDate
      t.string :unc
      t.string :MimeType
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
