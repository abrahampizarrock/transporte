Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/info'
  get 'pages/photos'
  get 'pages/video'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
