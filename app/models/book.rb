class Book < ActiveRecord::Base 
    belongs_to :user
    validates :title,  presence: true
    validates :isbn,  presence: true
    validates_presence_of :user
    
end
