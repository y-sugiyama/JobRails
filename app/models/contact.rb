class Contact < ApplicationRecord
  
#  attr_accessor :name, :email, :message
 
  validates :name, presence:true
  validates :email, presence:true
  validates :message, presence:true
  

  
end

#データベースを使わないモデルはActiveModelを使って作ります。
#これだけでデータの格納やバリデーションができてしまいます。
#
