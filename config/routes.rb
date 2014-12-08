Lemur::Application.routes.draw do
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
  resources :users
  resources :account_activations, only: [:edit]
end
