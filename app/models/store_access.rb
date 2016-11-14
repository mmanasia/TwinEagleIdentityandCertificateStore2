class StoreAccess < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :user_store
  belongs_to :cert_store
  belongs_to :user_group

  validates :NetworkId, :user_store_id, :cert_store_id, presence: true

end
