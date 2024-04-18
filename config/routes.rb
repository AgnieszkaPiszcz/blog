Rails.application.routes.draw do
  devise_for :users
  root "articles#index"
  resources :articles, except: [:delete, :create, :edit, :destroy] do
    resources :comments, except: [:delete, :edit, :destroy]
  end
  resources :articles do
    get '/page/:page', action: :index, on: :collection
  end

  namespace :admin do
    root "articles#index"
    resources :articles
    resources :comments
  end
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show" # :id to parametr zapytania get
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "posts#index"

end
