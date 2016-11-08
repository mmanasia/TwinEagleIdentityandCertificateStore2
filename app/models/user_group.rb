class UserGroup < ActiveRecord::Base
  has_many :member_groups

  validates :UserGroupName, presence: true

end
