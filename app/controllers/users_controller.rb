class UsersController < ApplicationController
    def uindex
		@users = User.all
    end
    
    
    
    def register
       @users = User.new 
    end
    
    def create 
        @users = User.new(u_params)

        
        if @users.save 
            redirect_to '/home'
        else 
            render 'new'
        end
    end
	
	def show 
  	@users = User.find(params[:id]) 
  	@books = @user.books 
	end
	
	private 
    def u_params
        params.require(:user).permit(:name, :phone)
    end
end
