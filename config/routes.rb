Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  devise_for :users
  # get 'pages/homes'
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :antiques
  get '/infos', to: 'pages#infos'
  get '/contact', to: 'pages#contact'
  resources :contacts
end
