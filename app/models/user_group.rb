class UserGroup < ActiveRecord::Base
  has_many :member_groups
  has_many :users
  has_many :cert_store_roles
  has_many :cert_stores
  has_many :cert_source_links
  has_many :environments
  has_many :identity_types
  has_many :sources
  has_many :source_links
  has_many :roles
  has_many :user_source_links
  has_many :user_store_roles
  has_many :user_stores
  has_many :store_accesses

  validates :UserGroupName, presence: true

end
