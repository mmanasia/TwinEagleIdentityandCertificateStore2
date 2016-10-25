class SourceLink < ActiveRecord::Base
  has_many :cert_store_links
  has_many :user_source_links

end
