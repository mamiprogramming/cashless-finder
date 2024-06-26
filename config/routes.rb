Rails.application.routes.draw do
  get 'venues/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "venues#index"
  resources :users
  resources :venues, only: [:index, :new, :create, :show, :edit, :update]do
    resources :comments, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
end
