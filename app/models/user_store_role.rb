class UserStoreRole < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :role
  belongs_to :user_store
  belongs_to :user_group

end
