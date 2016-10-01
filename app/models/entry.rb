class Entry < ApplicationRecord
  
  
  validates :name, presence:true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,  format: { with: VALID_EMAIL_REGEX }
  validates :age, presence:true
  validates :tel, presence:true
  validates :address, presence:true
  validates :subject, presence:true
  validates :body, presence:true
  

end
