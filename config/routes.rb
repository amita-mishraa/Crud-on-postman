Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # # root "articles#index"
    root "home#index"
    get '/homes/:id', to:'home#show'
  #  post 'home/create' 
  post '/home', to: 'homes#create'
end
