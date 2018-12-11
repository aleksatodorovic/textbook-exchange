Textbook Exchange:
by Alex, Greg, Brianna, Shees

We are trying to create a textbook 
selling / trading
site that is efficient for used books.
Thus, sellers post books and user
find book sellers.


Search has been deactivated to allow paging. In the books controller, instead of @books = Book.paginate..., to add search, add @books= Book.search(params[:search])
