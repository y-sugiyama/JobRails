class Contact < ApplicationRecord
  
#  attr_accessor :name, :email, :message
 
  validates :name, presence:true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,  format: { with: VALID_EMAIL_REGEX }
  validates :message, presence:true
  

  
end

#データベースを使わないモデルはActiveModelを使って作ります。
#これだけでデータの格納やバリデーションができてしまいます。
#
