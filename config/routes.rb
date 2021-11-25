Rails.application.routes.draw do
  
  resources :applies
  resources :job_posts
  #get 'contractors/index'
  #get 'workers/index'
  root "welcome#index"

  get '/search', to: "job_posts#search"

  
   devise_for :users
  


   resources :contractors
   resources :workers 

    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
