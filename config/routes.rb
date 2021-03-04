Rails.application.routes.draw do
  # get "todos", to: "todos#index"

  # get "todos/:id", to: "todos#show"

  # post "todos", to: "todos#create"
  get "/" =>"home#index"

  resources :todos , :users

  get "/signin" => "sessions#new" , as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_session

end
