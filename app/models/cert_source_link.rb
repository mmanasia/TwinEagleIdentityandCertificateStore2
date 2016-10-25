class CertSourceLink < ActiveRecord::Base
  belongs_to :source_link
  belongs_to :cert_store

end
