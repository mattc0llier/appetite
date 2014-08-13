Rails.application.routes.draw do
  root "venues#index"

  resources :venues
   
end
