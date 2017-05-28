Rails.application.routes.draw do



  get "/signup" => "users#new"
  get "/users" => "users#index"
  post "/users" => "users#create"

  get "/account" => "users#edit"
  patch "/account" => "users#update"


  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/pictures' => 'pictures#index'
  post "/upload" => "pictures#new"



  resources :users, :pictures
  resources :pics
  root to: 'pics#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
