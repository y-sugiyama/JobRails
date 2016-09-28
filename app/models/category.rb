class Category < ApplicationRecord
  
  has_many :jobs, foreign_key: :category_id
   accepts_nested_attributes_for :jobs
end
