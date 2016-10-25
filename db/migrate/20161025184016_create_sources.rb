class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :SourceDescription
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
