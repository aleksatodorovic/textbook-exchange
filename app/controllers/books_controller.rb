class BooksController < ApplicationController
    def index
        @book = Book.new
    end

    def home 
        @books = Book.all
        @users = User.all
    end

    def create 
        @book = Book.new(book_params)
        
        if @book.save
            redirect_to '/home'
        else 
            render 'new'
        end
    end
    
    def new 
        @book = Book.new
    end

    def show
        @books = Book.find(params[:id])
    end
    
    private
    def book_params
        params.require(:book).permit(:title, :isbn, :author)
    end
end