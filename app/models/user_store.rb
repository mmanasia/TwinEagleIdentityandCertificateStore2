class UserStore < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :source
  belongs_to :environment
  belongs_to :identity_type
  belongs_to :user_group
  has_many :user_source_links
  has_many :user_store_roles

  validates :UserStoreName, :UserStorePassword, :UserStoreExpirationDate, :source_id, :environment_id, :identity_type_id, presence: true

end
