class VhomeController < ApplicationController
  def vhome
  	@my_village=Village.where({user_id: current_user.id}).first  #FIXME , επιστρέφει μόνο το όνομα του πρώτου χωριού ενώς χρήστη
  	
  	#Location.find(:id => id, :select => "name, website, city", :limit => 1)
  	#User.where({ name: "Joe", email: "joe@example.com" })
  end
end
