class IdentityType < ActiveRecord::Base
  has_many :cert_stores
  has_many :user_stores

  validates :IdentityTypeName, :IdentityTypeDescription, presence: true

end
