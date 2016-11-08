class StoreAccess < ActiveRecord::Base
  belongs_to :user_store
  belongs_to :cert_store

  validates :NetworkId, :user_store_id, :cert_store_id, presence: true

end
