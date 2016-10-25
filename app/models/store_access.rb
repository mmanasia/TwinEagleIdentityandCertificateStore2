class StoreAccess < ActiveRecord::Base
  belongs_to :user_store
  belongs_to :cert_store

end
