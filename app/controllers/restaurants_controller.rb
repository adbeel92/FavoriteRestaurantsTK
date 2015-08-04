class RestaurantsController < ApplicationController
  def search
  	@ciudad = params[:search]

  end

  def favorite
  end

  def mostrar
  @article = Article.new(params[:article])
  @article.save
  redirect_to @article
end
end
