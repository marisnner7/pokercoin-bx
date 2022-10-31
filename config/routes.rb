Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pokemon#index"

  get '/pokemon/:id', to: 'pokemon#show', as: 'pokemon_show'
  get '/pokemon/:id/checkout', to: 'pokemon#checkout', as: 'pokemon_checkout'
  post '/pokemon/:id/buy', to: 'pokemon#buy', as: 'pokemon_buy'
  post '/pokemon/:id/sell', to: 'pokemon#sell', as: 'pokemon_sell'


  get '/user', to: 'user#index', as: 'user_index'
  get '/user/add', to: 'user#add', as: 'user_add'
  get '/user/transactions', to: 'user#transactions', as: 'user_transactions'



end
