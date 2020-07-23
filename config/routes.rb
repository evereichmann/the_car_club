Rails.application.routes.draw do
  root to: 'pages#home'
  
  resources :fans
  resources :cars
  resources :likes
  
end
