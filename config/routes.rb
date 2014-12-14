Lemur::Application.routes.draw do
  get "password_resets/new"
  get "password_resets/edit"
  get "sessions/new"
  get "users/new"
  root 'static_pages#home'
  get 'about'	=> 'static_pages#about'
  get 'help'	=> 'static_pages#help'
  get 'terms'	=> 'static_pages#terms'
  get 'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :show, :destroy]
  resources :relationships,       only: [:create, :destroy]
end
