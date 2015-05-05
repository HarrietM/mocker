class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # has_secure_password
  validates :email, uniqueness: true
  has_many :tweets
  has_many :followee_follows, class_name: 'Follow', foreign_key: 'followee_id'
  has_many :followers, class_name: 'User', through: :followee_follows

  has_many :follower_follows, class_name: 'Follow', foreign_key: 'follower_id'
  has_many :followees, class_name: 'User', through: :follower_follows
end
