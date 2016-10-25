class CreateSourceLinks < ActiveRecord::Migration
  def change
    create_table :source_links do |t|
      t.string :Hyperlink
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
