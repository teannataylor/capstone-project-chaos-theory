Rails.application.routes.draw do
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  resources :projects
  resources :teams
  resources :tasks
  resources :employees

  post '/signup', to: 'employees#create'
  get '/me', to: 'employees#show'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
