class User < ApplicationRecord
  has_many :posts

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 # enums
 enum admin: {
   user_public: 0,
   administrator: 1,
 }

end
