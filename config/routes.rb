Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/products/:id", controller: "products", action: "show"
  get "/products", controller: "products", action: "index"
  post "/products", controller: "products", action: "create"
  patch "/products/:id", controller: "products", action: "update"
  delete "/products/:id", controller: "products", action: "destroy"

  get "/suppliers/:id", controller: "suppliers", action: "show"
  get "/suppliers", controller: "suppliers", action: "index"
  post "/suppliers", controller: "suppliers", action: "create"
  patch "/suppliers/:id", controller: "suppliers", action: "update"
  delete "/suppliers/:id", controller: "suppliers", action: "destroy"

  get "/images/:id", controller: "images", action: "show"
  get "/images", controller: "images", action: "index"
  post "/images", controller: "images", action: "create"
  patch "/images/:id", controller: "images", action: "update"
  delete "/images/:id", controller: "images", action: "destroy"

  post "/users", controller: "users", action: "create"
  post "/sessions", controller: "sessions", action: "create"
  get "/sessions", controller: "sessions", action: "current_user"

  get "/orders/:id", controller: "orders", action: "show"
  get "/orders", controller: "orders", action: "index"
  post "/orders", controller: "orders", action: "create"
  # patch "/orders/:id", controller: "orders", action: "update"
  # delete "/orders/:id", controller: "orders", action: "delete"

  get "/carted_products/:id", controller: "carted_products", action: "show"
  get "/carted_products", controller: "carted_products", action: "index"
  post "/carted_products", controller: "carted_products", action: "create"
  delete "/carted_products/:id", controller: "carted_products", action: "destroy"
end
