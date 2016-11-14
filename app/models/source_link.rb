class SourceLink < ActiveRecord::Base
  belongs_to :user_group
  has_many :cert_source_links
  has_many :user_source_links

end
