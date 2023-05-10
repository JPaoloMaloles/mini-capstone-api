Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/showany/:id", controller: "products", action: "showany"
  get "/showall", controller: "products", action: "showall"
end
