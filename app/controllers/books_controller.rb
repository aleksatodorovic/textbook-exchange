class BooksController < ApplicationController
    
    def index
        @users = User.all
        @books = Book.search(params[:search])#where(["title LIKE ?","%#{params[:search]}%"])
        @books.order(:timestamps)
        @books.reverse_order!
        
    end
    
    def search
        @users = User.all
        @books = Book.search(params[:search])
	    if params[:search]
		    @books = Book.find(:all, :conditions => ['name LIKE ?', "%#{params[:search]}%"])
	    else
		    @books = Book.all
	    end
	    #redirect_to '/search'
    end

    def home 
        @books = Book.all
        @books.order(:timestamps)
        @users = User.all
        @books.reverse_order!
            
    end

    def destroy
        Book.find(params[:id]).destroy
        flash[:success] = "Book deleted"
        redirect_to '/index'
    end

    def create 
        @books = Book.new(m_params)
        @books.user = current_user
        if @books.save 
            redirect_to '/index'
        else 
            flash.now[:notice] = "Error adding book"
            redirect_to '/books'
        end

    end

    def delete
        render "hello this works!"
    end

    def new 
        @books = Book.new
    end
    
    def show
        if params[:search]
            @books = Book.search(params[:search]).order("created_at DESC")
        else
            @books = Book.all.order("created_at DESC")
        end
        @books = Book.find(params[:id])
        
    end
    private 
    def m_params
        params.require(:book).permit(:title, :isbn)
    end


    
end