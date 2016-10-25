class CreateCertSourceLinks < ActiveRecord::Migration
  def change
    create_table :cert_source_links do |t|
      t.integer :SourceLink_id
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
