Rails.application.routes.draw do
  resources :homes

  get "/" => "homes#top"
  get "/books" => "homes#index"
  post "homes" => "homes#create"
 
  
end
