class CertStore < ActiveRecord::Base
  mount_uploader :unc, UncUploader

  belongs_to :source
  belongs_to :environment
  belongs_to :identity_type
  has_many :cert_source_links
  has_many :cert_store_roles

  validates :CertStoreName, :CertStoreDescription, :CertStorePassword, :CertStoreExpirationDate, :unc, :MimeType, :source_id, :environment_id, :identity_type_id, presence: true

  accepts_nested_attributes_for :cert_source_links, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :cert_store_roles, reject_if: :all_blank, allow_destroy: true


end
