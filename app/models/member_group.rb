class MemberGroup < ActiveRecord::Base
  acts_as_paranoid

  #belongs_to :network_user
  belongs_to :user_group

end
