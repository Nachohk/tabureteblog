Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "posts", to: "posts#index"
  post "posts", to: "posts#create"
  get "posts/new", to: "posts#new", as: "posts_new"
  get "posts/:id/edit", to: "posts#edit", as: "posts_edit"
  get "posts/:id", to: "posts#show", as: "post"
  patch "posts/:id", to: "posts#update"
  delete "posts/:id", to: "posts#destroy"
 
  # Defines the root path route ("/")
  root "posts#index"
end
