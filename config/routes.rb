Rails.application.routes.draw do
  
   get 'home/about' => "homes#about"
  root to:'homes#index'
  
  
  devise_for :users

  resources :homes
  
  resources :users do
    resource :relationships,only:[:create, :destroy]
    # フォローしている人を表示するためのルーティング
    get :followings
    # フォワ−　されている人を表示するためにルーティング
    get :followers
  end
  
    resources :books do 
      resource :likes,only:[:create, :destroy]
      resources :comments,only:[:create,:destroy]
      resource :selects,only:[:create, :destroy]
    end
    
    get '/search' => 'searchs#search'
  
end
