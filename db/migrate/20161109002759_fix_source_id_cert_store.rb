class FixSourceIdCertStore < ActiveRecord::Migration
  def change
    change_table :cert_stores do |t|
      t.rename :source_id, :Source_id
    end
  end
end

