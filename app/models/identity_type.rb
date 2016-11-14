class IdentityType < ActiveRecord::Base
  belongs_to :user_group
  has_many :cert_stores
  has_many :user_stores

  validates :IdentityTypeName, :IdentityTypeDescription, presence: true

end
