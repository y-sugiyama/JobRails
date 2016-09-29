class Job < ApplicationRecord
  
  belongs_to :category 
  
  
   validates :title, presence: true 
 validates :description, presence: true
 validates :salary,presence: true
 validates :area,inclusion: { in: ["東京都", "神奈川県", "埼玉県","千葉県"] }
  validates :category_id,presence: true
  # validates :name,presence: true
    validates :company,presence: true
end
