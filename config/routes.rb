Rails.application.routes.draw do
  get 'sessions/new'

  get '/signup',   to: 'users#new'
  post '/signup',  to: 'users#create'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/login',    to: 'sessions#new'
  post  '/login',    to: 'sessions#create'
  get  '/logout',    to: 'sessions#destroy'
  resources :users
  
  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
