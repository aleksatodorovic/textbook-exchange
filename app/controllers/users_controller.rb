class UsersController < ApplicationController
    
    def uindex
		@users = User.all
    end
    
    def register
       @users = User.new 
    end
    
    def login
        @users= User.all
    end
    
    def create 
        @user = User.new(u_params)

        if @user.save 
            #log_in @user
            redirect_to root_url, :notice => "Signed up!"
        else 
            flash.now[:notice] = "Error adding user"
            redirect_to '/register'
        end
    end
	
	def profile
	    @user = User.newS
	end
	
	def show 
  	    @users = User.find(params[:id]) 
  	    @books = @user.books 
	end
	
	def new 
        @user = User.new
    end
    
    def phone_number=(value)
        super(value.blank? ? nil : value.gsub(/[^\w\s]/, '')) 
    end
	
	private 
    def u_params
        params.require(:user).permit(:name, :password, :phone)
    end
end
