class BooksController < ApplicationController
    
    def index
        @books = Book.new()
        @users = User.all
        if params[:search]
            @search_term = params[:search]
            @books = Book.search_by(@search_term)
        end
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
        redirect_to '/home'
    end

    def create 
        @books = Book.new(m_params)

        
        if @books.save 
            redirect_to '/home'
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
        params.require(:book).permit(:title, :isbn, :user_id)
    end


    
end