class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


has_many :followed_users,
         foreign_key: :follower_id,
         class_name: 'Relationship', 
         dependent: :destroy 
has_many :followees, throught: :followed_users, dependent: :destroy


has_many :following_users,
         foreign_key: :followee_id,
         class_name: 'Relationship', 
         dependent: :destroy 
has_many :followers, throught: :following_users, dependent: :destroy
       


end
