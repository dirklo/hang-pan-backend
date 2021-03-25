Rails.application.routes.draw do
  get '/notes', to: 'notes#index'
end
