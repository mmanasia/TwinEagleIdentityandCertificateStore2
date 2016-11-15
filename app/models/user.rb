class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :rememberable, :validatable, :authentication_keys => [:username]

  belongs_to :user_group
  has_many :member_groups

  validates :username, presence: true


end
