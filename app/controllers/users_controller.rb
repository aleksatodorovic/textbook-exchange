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
        @users = User.new(u_params)

        
        if @users.save 
            log_in @user
            redirect_to '/home'
        else 
            flash.now[:notice] = "Error adding user"
            redirect_to '/register'
        end
    end
	
	def show 
  	@users = User.find(params[:id]) 
  	@books = @user.books 
	end
	
	private 
    def u_params
        params.require(:user).permit(:name, :password, :phone)
    end
end
