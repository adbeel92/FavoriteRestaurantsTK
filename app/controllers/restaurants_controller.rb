class RestaurantsController < ApplicationController
  def search
	#client = Foursquare2::Client.new(:api_version => '20120505')
	#client = Foursquare2::Client.new(:client_id => '2931213', :client_secret => 'asasf')
  	wordSearch = params[:search]
  	@result = FOURSQUARE_CLIENT.search_venues(:near => 'Lima', :query => wordSearch)["venues"]
  end

  def favorite
  		@parameter1 = params[:name]  #this is the value to show in favorite page
  end

end 
