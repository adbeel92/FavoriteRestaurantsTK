class RestaurantsController < ApplicationController
	favoritos = Array.new
	
  def search
  	if params[:search]
  		@restaurantes = FOURSQUARE_CLIENT.search_venues(:near => params[:search], :categoryId => "4d4b7105d754a06374d81259")["venues"]
  	else
  		@restaurantes = []
  	end
  end

  def favorite
  	rest = 
  end

end
