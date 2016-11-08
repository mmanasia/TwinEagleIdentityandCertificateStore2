class FixColumnNames3 < ActiveRecord::Migration
  def change
    change_table :cert_stores do |t|
      t.rename :source_id, :source_id
    end
  end
end
