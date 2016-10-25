class Role < ActiveRecord::Base
  belongs_to :source
  has_many :cert_store_roles
  has_many :user_store_roles

end
