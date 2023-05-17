Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/products/:id", controller: "products", action: "show"
  get "/products", controller: "products", action: "index"
  post "/products", controller: "products", action: "create"
  patch "/products/:id", controller: "products", action: "update"
  delete "/products/:id", controller: "products", action: "delete"

  get "/suppliers/:id", controller: "suppliers", action: "show"
  get "/suppliers", controller: "suppliers", action: "index"
  post "/suppliers", controller: "suppliers", action: "create"
  patch "/suppliers/:id", controller: "suppliers", action: "update"
  delete "/suppliers/:id", controller: "suppliers", action: "delete"

  get "/images/:id", controller: "images", action: "show"
  get "/images", controller: "images", action: "index"
  post "/images", controller: "images", action: "create"
  patch "/images/:id", controller: "images", action: "update"
  delete "/images/:id", controller: "images", action: "delete"
end
