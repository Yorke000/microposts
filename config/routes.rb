Rails.application.routes.draw do
  root to: 'static_pages#home'
  
  get    'help', to: 'static_pages#help'
  get    'about'   => 'static_pages#about'
  get    'contact' => 'static_pages#contact'
  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
 

  resources :users
  resources :microposts
end