Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # gem human routes config
  route :login do
    create as: "login"
  end

  root "home#index"   
end
