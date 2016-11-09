class FixSourceIdCertStore2 < ActiveRecord::Migration
  def change
    change_table :cert_stores do |t|
      t.rename :Source_id, :source_id
    end
  end
end

