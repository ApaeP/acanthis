# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, :skip => [:registrations]
  resources :categories, only: [:create, :update, :destroy]
  resources :antiques, only: [:index, :create, :update, :destroy]
  resources :contacts#, only: [:create]
  get '/admin' => redirect('/users/sign_in')
  get 'contacts/new'
  get 'contacts/create'
  get '/infos', to: 'pages#infos'
  get '/salons', to: 'pages#salons'
  get '/sncao', to: 'pages#sncao'
end
