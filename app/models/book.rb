class Book < ActiveRecord::Base
    validates :title, :premiere, presence: true
	validates :title, length: { minimum: 3 }
	validates :title, length: { maximum:20 }
    validates :premiere, length: { is:4 }, numericality: true
    validates :premiere, format: {with: /(12|13|14|15|16|17|18|19|20)\d{2}/i}  
end
