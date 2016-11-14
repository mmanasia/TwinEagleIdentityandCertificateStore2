class CertStoreRole < ActiveRecord::Base
  belongs_to :role
  belongs_to :cert_store
  belongs_to :user_group

end
