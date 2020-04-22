Rails.application.routes.draw do
  resources :photo_booths
  root 'messages#index'
  resources :messages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
