Rails.application.routes.draw do
  # resources :articles do 
  #   resources :comments, only: [:new, :create, :index]
  # end
  # resources :comments, except: [:new, :create, :index]
  resources :articles do 
    resources :comments, shallow: true, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
