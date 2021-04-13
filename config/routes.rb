Rails.application.routes.draw do
  resources :homes
  get "/books/:id/edit" => "homes#edit", as: "edit"
  get "books/:id" => "homes#show", as: "book"
  get "books/:id/edit" => "homes#edit", as:"edit_book"
  root :to => "homes#top"
  get "/books" => "homes#index", as: "books"
  post "books" => "homes#create"
  patch "books/:id" => "books#update", as: "update_book"
  delete "books/:id" => "books#destroy", as: "destroy_book"
end
