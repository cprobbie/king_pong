Rails.application.routes.draw do
  resources :games
  resources :player_games
  resources :players

  get '/', to: 'session#home'

  post '/session', to: 'session#create'

  get '/draw', to: 'games#draw'

  delete '/session', to: 'session#destroy'
end
