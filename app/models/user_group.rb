class UserGroup < ActiveRecord::Base
  has_many :member_groups
  has_many :users

  validates :UserGroupName, presence: true

end
