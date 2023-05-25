Rails.application.routes.draw do
  resources :cars, path: 'cars', only: [:index, :create, :new, :show]
  get 'user/index'
  get 'user/create'
  get 'user/show'
  devise_for :users, :skip => [:sessions]
  as :user do
  get 'signin' => 'devise/sessions#new', :as => :new_user_session
  post 'signin' => 'devise/sessions#create', :as => :user_session
  get 'signout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root to: "cars#index"
end
