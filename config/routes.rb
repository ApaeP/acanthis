Rails.application.routes.draw do
  root to: 'pages#home'
  devise_scope :user do
    get "change_password", to: "devise/registrations#edit", as: :edit_user_registration
    patch "users", to: "devise/registrations#update", as: :user_registration
    put "users", to: "devise/registrations#update"
  end
  devise_for :users, :skip => [:registrations]
  get '/admin' => redirect('/users/sign_in')
  resources :categories, only: [:create, :update, :destroy] do
    resources :antiques, only: [:new, :create, :edit, :update, :index]
  end
  resources :antiques, only: [:destroy]
  resources :contacts
  resources :images, only: [:destroy]
  # get 'contacts/new'
  # get 'contacts/create'
  get '/infos', to: 'pages#infos'
  get '/salons', to: 'pages#salons'
  get '/sncao', to: 'pages#sncao'
end
