class Image < ActiveRecord::Base
  validates :imagename,presence: true, length:{minimum: 3, maximum: 50}
  validates :category, presence: true, length:{minimum: 2, maximum: 15}
  
end 