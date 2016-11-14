class UserSourceLink < ActiveRecord::Base
  belongs_to :source_link
  belongs_to :user_store
  belongs_to :user_group

end
