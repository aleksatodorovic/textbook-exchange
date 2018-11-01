class SessionsController < ApplicationController
  def new
  end
  
  
  def create
    
    user = User.where(:name => params[:session][:name].downcase).first
    #user.encrypt_password
    if user #&& user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to '/home'
    else
      # Create an error message.
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
  
end
