Rails.application.routes.draw do
  
  get "morty/", to: "mortys#index"
  get "morty/:id", to: "mortys#show"
end
