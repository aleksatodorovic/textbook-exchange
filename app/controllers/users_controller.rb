class UsersController < ApplicationController
    def uindex
		@users = User.all
    end
    
    
	
	def show 
  	@users = User.find(params[:id]) 
  	@books = @user.books 
	end
end
