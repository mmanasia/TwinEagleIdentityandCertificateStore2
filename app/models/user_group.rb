class UserGroup < ActiveRecord::Base
  has_many :member_groups

end
