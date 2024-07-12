Rails.application.routes.draw do
  root 'home#index'
  get 'about', to: 'pages#about'

  resources :car_manufacturers do
    resources :cars, only: [:index, :show]
    collection do
      get 'search', to: 'car_manufacturers#search'
    end
  end

  resources :cars, only: [:index, :show]

  # Other routes for your application
end
