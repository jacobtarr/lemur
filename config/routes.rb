Lemur::Application.routes.draw do
  get "users/new"
  root 'static_pages#home'
  get 'about'	=> 'static_pages#about'
  get 'help'	=> 'static_pages#help'
  get 'terms'	=> 'static_pages#terms'
  get 'signup'  => 'users#new'
end
