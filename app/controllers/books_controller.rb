class BooksController < ApplicationController
    
    def index
        @books = Book.new
    end


    def home 
        @books = Book.all
    end


    def create 
        @books = Book.new(m_params)
        
        if @books.save
            redirect_to '/home'
        else 
            render 'new'
        end
    end


    def new 
        @books = Book.new
    end
    
    private 
    def m_params
        params.require(:book).permit(:title)
    end

    def show
        @books = Book.find(params[:id])
    end
end