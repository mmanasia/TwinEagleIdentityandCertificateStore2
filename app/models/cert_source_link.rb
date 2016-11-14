class CertSourceLink < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :source_link
  belongs_to :cert_store
  belongs_to :user_group

end
