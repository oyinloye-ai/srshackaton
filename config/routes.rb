Rails.application.routes.draw do
  resources :institutions
  resources :expenditures
  resources :guarantors
  resources :employments
 root to: 'home#index'

  get 'home/about'

  get 'home/contact'

  get 'home/member'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', 	to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions,        only: [:new, :create, :destroy]

  resources :users do
  	member do
  		get :following ,:followers
  	end
  end

  namespace :api do
    namespace :v1 do

      post 'authenticate' , to: 'authentication#authenticate'

      resources :users, only: [:index, :create, :show, :update, :destroy]
   

      resources :guarantors
      resources :expenditures
      resources :employments
      resources :institutions

    end #end of v1 namespace
  end #end of api namespace
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
