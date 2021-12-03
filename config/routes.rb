Rails.application.routes.draw do
  
  resources :applies
  resources :job_posts do 

    collection do 
      get :show_contractor_job
    end
  end
  #get 'contractors/index'
  #get 'workers/index'
  root to: "welcome#index"


  get '/search', to: "job_posts#search"
  devise_for :users 

  resources :users

  
   resources :contractors
   resources :workers 

    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

