class CreateIdentityTypes < ActiveRecord::Migration
  def change
    create_table :identity_types do |t|
      t.string :IdentityTypeName
      t.string :IdentityTypeDescription
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
