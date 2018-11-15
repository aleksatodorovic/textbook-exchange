class User < ActiveRecord::Base 
    attr_accessor :password
    has_many :book
    validates :name,  presence: true, uniqueness: true
    validates :phone,  presence: true, uniqueness: true
    validates :password,  presence: true
    
    def encrypt_password
        if password.present?
            self.password_salt = BCrypt::Engine.generate_salt
            self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
        end
    end
  
    def authenticate(password)
        if self && self.password_hash == BCrypt::Engine.hash_secret(password, self.password_salt)
            self
        else
            nil
        end
    end

    
end
