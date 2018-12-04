class Book < ActiveRecord::Base 
    belongs_to :user

    validates :title,  presence: true
    validates :isbn,  presence: true, :numericality => {:only_integer => true}
    validates :price, presence: true
    validates_presence_of :user
    
    def self.search(terms)
        if terms
            where("title LIKE ?", "%#{terms}%")
        else 
            all
        end
    end
end
