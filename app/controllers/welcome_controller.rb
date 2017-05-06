class WelcomeController < ApplicationController
  def index
  
  	if user_signed_in?
  		@message = current_user.email
  		@Button_Link = "http://localhost:3000/vhome/vhome"
  		else 
  		@Button_Link = "http://localhost:3000/users/sign_in"
  		@message = "Stranger"
  	end 

  end
end
