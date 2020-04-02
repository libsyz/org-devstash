Rails.application.routes.draw do
  root to: 'pages#home'

  get '/studio', to: 'pages#studio'

  resources :categories
end
