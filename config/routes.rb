Rails.application.routes.draw do
  devise_for :users
  root  "pages#home"
  get 'pages/home'
  resources :profiles

  resources :pages do 
  resource :comments, only: :create
  end


  get 'p/:id', to: 'profiles#show'
  post 'profiles/follow', to: 'profiles#follow'
  delete 'profiles/unfollow', to: 'profiles#unfollow'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
