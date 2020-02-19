Rails.application.routes.draw do
  devise_for :users
  resources :types 

  get "/listings/new", to: "listings#new", as: "listings_new"
  post "/listings", to: "listings#create", as: "listings_create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "homepage#index"

  # Sellers Page

  #Buyers Page
  get "/buying", to: "buying#index", as: "buying_index"
  
  #Show individual listing before Order
  get "listing/:id", to: "listings#show", as: "listings_show"

end
