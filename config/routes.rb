Rails.application.routes.draw do
 

  resources :entries, only: [:new, :thanks, :confirm, :show, :index]
  post 'entries' => 'entries#confirm'
  get 'entries/confirm' => 'entries#confirm'
  post 'entries/thanks' => 'entries#thanks'
  
  resources :categories
  resources :jobs
#スコープの広いもの（rootとか）は後のほうに定義
  resources :contacts, only: [:new, :thank, :confirm]
  post 'contacts' => 'contacts#confirm'
  get 'contacts/confirm' => 'contacts#confirm'
  post 'contacts/thanks' => 'contacts#thanks'
  
  resources :posts
  
  
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users

  root 'users#index'
  get'/top' => 'pages#top'
  get'/about' => 'pages#about'
  get'/access' => 'pages#access'
   get'/news' => 'pages#news'
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

