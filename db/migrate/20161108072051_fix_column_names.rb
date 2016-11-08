class FixColumnNames < ActiveRecord::Migration
  def change
    change_table :cert_stores do |t|
      t.rename :Environment_id, :environment_id
      t.rename :IdentityType_id, :identity_type_id
    end

    change_table :user_stores do |t|
      t.rename :Source_id, :source_id
      t.rename :Environment_id, :environment_id
      t.rename :IdentityType_id, :identity_type_id
    end

    change_table :cert_source_links do |t|
      t.rename :CertStore_id, :cert_store_id
      t.rename :SourceLink_id, :source_link_id
    end

    change_table :user_source_links do |t|
      t.rename :UserStore_id, :user_store_id
      t.rename :SourceLink_id, :source_link_id
    end

    change_table :cert_store_roles do |t|
      t.rename :CertStore_id, :cert_store_id
      t.rename :Role_id, :role_id
    end

    change_table :user_store_roles do |t|
      t.rename :UserStore_id, :user_store_id
      t.rename :Role_id, :role_id
    end

    change_table :store_accesses do |t|
      t.rename :UserStore_id, :user_store_id
      t.rename :CertStore_id, :cert_store_id
    end

  end
end
