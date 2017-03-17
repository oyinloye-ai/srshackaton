Rails.application.routes.draw do
 root to: 'home#index'

  get 'home/about'

  get 'home/contact'

  get 'home/member'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', 	to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :posts do
    resources :comments
    member do
      post :repost
    end
  end

  resources :posts do
    resource :like,    only: [:create, :destroy]
  end

  resources :comments do
    resources :comments 
  end

  resources :sessions,        only: [:new, :create, :destroy]
  resources :relationships,   only: [:create, :destroy]
  resources :users do
  	member do
  		get :following ,:followers
  	end
  end

  namespace :api do
    namespace :v1 do

      post 'authenticate' , to: 'authentication#authenticate'

      resources :users, only: [:index, :create, :show, :update, :destroy] do
        member do
          get :following ,:followers
        end
        collection do
          get :feed , :leaders
        end
      end

      resources :bets do
        collection do
          get :pinnacle
        end
      end

      resources :relationships,   only: [:create, :destroy]

      resources :posts do
        resources :comments
        resource :like,    only: [:create, :destroy]
        member do
          post :repost
        end
      end

      resources :comments do
        resources :comments 
      end

    end #end of v1 namespace
  end #end of api namespace
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
