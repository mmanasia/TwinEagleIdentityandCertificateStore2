class CertStore < ActiveRecord::Base
  mount_uploader :unc, UncUploader

  belongs_to :source
  belongs_to :environment
  belongs_to :identity_type
  has_many :cert_source_links
  has_many :cert_store_roles
  
end
