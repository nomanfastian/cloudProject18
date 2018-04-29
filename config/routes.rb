Rails.application.routes.draw do
  resources :locations
  resources :resturants do 
    member do
      post "create_review"
    end
    collection do
      get "manage_resturants"
    end
  end
  post '/rate' => 'rater#create', :as => 'rate'
  resources :hotels do
    collection do
      get "manage_hotels"
    end
  end
  resources :attractions do
    collection do
      get "manage_attractions"
    end
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "hotels#index"
end
