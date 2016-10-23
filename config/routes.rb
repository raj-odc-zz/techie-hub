Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles do
    resources :comments
  end
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'signup' => 'authors#new'
  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
  root to: 'articles#index'

end
