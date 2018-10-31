class User < ActiveRecord::Base 
    has_many :book
    validates :name,  presence: true, uniqueness: true
    validates :phone,  presence: true, uniqueness: true
    #validates :password,  presence: true
    has_secure_password validations: false

    
end
