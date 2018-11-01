class Book < ActiveRecord::Base 
    belongs_to :user
    
    def self.search(search)
  where("title ILIKE ? OR ISBN ILIKE ?", "%#{search}%", "%#{search}%") 
    end
end
