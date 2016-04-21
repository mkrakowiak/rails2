class Book < ActiveRecord::Base
    validates :title, :premiere, presence: true
	validates :title, length: { minimum: 3 }
	validates :title, length: { maximum:20 }
    validates :premiere, length: { is:4 }, numericality: true
    validates :premiere, format: {with: /(12|20)\d{2}/i}  
end
