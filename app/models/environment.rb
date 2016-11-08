class Environment < ActiveRecord::Base
  has_many :cert_stores
  has_many :user_stores

  validates :EnvironmentName, :EnvironmentDescription, presence: true

end
