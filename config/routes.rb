Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles do
    resources :comments
    get :autocomplete_tag_name, :on => :collection
  end
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]
  
  get 'search', to: 'search#search'
  get 'signup' => 'authors#new'
  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
  root to: 'articles#index'

end
