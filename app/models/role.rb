class Role < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :source
  belongs_to :user_group
  has_many :cert_store_roles
  has_many :user_store_roles

  validates :RoleDescription, :source_id, presence: true

end
