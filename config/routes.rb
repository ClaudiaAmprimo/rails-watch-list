Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'lists#index'
  resources :lists do
    resources :bookmarks, only: [:create, :new]
  end
  resources :bookmarks, only: [:destroy, :edit, :update]
end
