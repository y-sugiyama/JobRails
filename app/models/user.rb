class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
       :validatable
  
 validates :email, presence: true, uniqueness: true 
 validates :password, presence: true,confirmation:true
 validates :password_confirmation,presence: true
 validates :role,inclusion: { in: ['admin','user'] }
 
 def admin?
   role == 'admin'
 end
  
end
