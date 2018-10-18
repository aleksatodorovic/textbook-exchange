class BooksController < ApplicationController
    
    def index
        @books = Book.new
    end


    def home 
        @books = Book.all
        @users = User.all
    end

    def destroy
        Book.find(params[:id]).destroy
        flash[:success] = "Book deleted"
        redirect_to '/home'
    end

    def create 
        @books = Book.new(m_params)

        
        if @books.save 
            redirect_to '/home'
        else 
            render 'new'
        end
    end

    def delete
        render "hello this works!"
    end

    def new 
        @books = Book.new
    end
    
    private 
    def m_params
        params.require(:book).permit(:title, :isbn)
    end
    
    def u_params
        params.require(:user).permit(:name, :phone)
    end

    def show
        @books = Book.find(params[:id])
    end
end