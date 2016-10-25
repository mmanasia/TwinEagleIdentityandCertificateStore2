class CreateEnvironments < ActiveRecord::Migration
  def change
    create_table :environments do |t|
      t.string :EnvironmentName
      t.string :EnvironmentDescription
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
