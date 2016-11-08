class StoreAccess < ActiveRecord::Base
  belongs_to :user_store
  belongs_to :cert_store

  validates :NetworkId, :UserStore_id, :CertStore_id, presence: true

end
