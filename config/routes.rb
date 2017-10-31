Rails.application.routes.draw do

  resources :pets

  get '/found', to: 'pets#found'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
