Rails.application.routes.draw do
  resources :homes

  root :to => "homes#top"
  get "/books" => "homes#index"
  post "homes" => "homes#create"
  patch "books/:id" => "books#update", as: "update_book"
  delete "books/:id" => "books#destroy", as: "destroy_book"
end
