class Entry < ApplicationRecord
  
  
  validates :name, presence:true
  validates :email, presence:true
  validates :age, presence:true
  validates :tel, presence:true
  validates :address, presence:true
  validates :subject, presence:true
  validates :body, presence:true
end
