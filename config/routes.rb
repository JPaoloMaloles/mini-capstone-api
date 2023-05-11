Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/product/:id", controller: "products", action: "show"
  get "/products", controller: "products", action: "index"
  post "/products", controller: "products", action: "create"
  patch "/products/:id", controller: "products", action: "update"
end
