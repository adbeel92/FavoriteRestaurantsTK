Rails.application.routes.draw do
  get 'restaurants/search'

  get 'restaurants/favorite'
  post 'restaurants/new_favorite'
  root 'restaurants#search'

end
