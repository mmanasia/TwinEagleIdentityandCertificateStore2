class FixColumnNames2 < ActiveRecord::Migration
  def change
    change_table :roles do |t|
      t.rename :Source_id, :source_id
  end
  end
end

