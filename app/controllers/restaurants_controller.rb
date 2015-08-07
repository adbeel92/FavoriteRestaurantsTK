class RestaurantsController < ApplicationController
  def search
  	if params.has_key?(:search)
  		@restaurants = FOURSQUARE_CLIENT.search_venues(:near => params[:search], :categoryId => "4d4b7105d754a06374d81259")["venues"]
  	else
  		@restaurants = []
  	end
  end

  def favorite
  	@favorites = Favorite.all
  end

  def create_favorite
  	if params.has_key?(:name)
  		name = params[:name]
  	end

  	if params.has_key?(:category)
  		category = params[:category]
  	end
  	@restaurant= Favorite.create(:name => name, :category => category)
  end

end
