Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get 'pages/homes'
  # get '/contact', to: 'pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/admin' => redirect('/users/sign_in')
  get '/users/sign_up', to: 'pages#home'
  resources :antiques
  resources :categories
  resources :contacts
  get 'contacts/new'
  get 'contacts/create'
  get '/infos', to: 'pages#infos'
  # get '/antiquites', to: 'pages#antiquites'
  get '/salons', to: 'pages#salons'
  get '/sncao', to: 'pages#sncao'
end
