Rails.application.routes.draw do
  get 'restaurants/search'

  get 'restaurants/favorite'

  root 'restaurants#search'

end
