Rails.application.routes.draw do

  get "/morty/new", to: "mortys#new"
  post "/morty", to: "mortys#create"
  get "/morty/", to: "mortys#index"
  get "/morty/:id", to: "mortys#show"
  get "/morty/:id", to: "mortys#edit"
  patch "/morty/:id", to: "mortys#update"
  delete "/morty/:id", to: "mortys#destroy"


end
