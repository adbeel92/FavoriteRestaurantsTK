Rails.application.routes.draw do
  get 'restaurants/search'

  get 'restaurants/favorite'
  post 'restaurants/create_favorite'

  root 'restaurants#search'

end
