class RestaurantsController < ApplicationController
  def search
  	city_search=params[:search]
  	if params.has_key?(:search)
  		@restaurants=FOURSQUARE_CLIENT.search_venues(:near => city_search, :categoryId =>'4d4b7105d754a06374d81259')["venues"]
  	else
  		@restaurants=[]
  	end
  end
  def new_favorite
  	name_restaurant=params[:name_r]
  	name_category=params[:category_r]
  	@current_favorite=Favorite.create({name: name_restaurant , category: name_category})
  end

  def favorite
  	@favorites=Favorite.all
  end
end
