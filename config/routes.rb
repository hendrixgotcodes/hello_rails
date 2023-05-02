Rails.application.routes.draw do

  root "posts#index"

  namespace :admin do
    resources :articles, :comments
  end

  resources :posts

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
