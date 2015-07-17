class RestaurantsController < ApplicationController
  def search
  	if (params.has_key?(:search))  	  		
 		@restaurants = FOURSQUARE_CLIENT.search_venues(:near => params[:search])["venues"]
 	else
 		@restaurants = []
 	end
  end

  def new_favorite  	
  	@restaurants = Favorite.new(params.require(:favorites).permit(:name,:category))
  	@restaurants.save
  
  	redirect_to restaurants_favorites_path
  end

  def favorites  
  	@favorites = Favorite.all	
  end
end