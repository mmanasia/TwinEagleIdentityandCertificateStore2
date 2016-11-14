class Environment < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :user_group
  has_many :cert_stores
  has_many :user_stores

  validates :EnvironmentName, :EnvironmentDescription, presence: true

end
