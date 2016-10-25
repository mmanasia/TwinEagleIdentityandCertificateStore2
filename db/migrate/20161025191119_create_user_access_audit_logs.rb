class CreateUserAccessAuditLogs < ActiveRecord::Migration
  def change
    create_table :user_access_audit_logs do |t|
      t.integer :RecordId
      t.string :TableName
      t.string :Attribute
      t.string :PreviousValue
      t.string :CurrentValue
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
