Rails.application.routes.draw do
  get '/notes', to: 'notes#index'
  get '/notes/:id', to: 'notes#show'
  get '/scales', to: 'scales#index'
  get '/scales/:id', to: 'scales#show'
  post '/scales', to: 'scales#create'
end
