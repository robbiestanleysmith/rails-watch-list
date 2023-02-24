Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end

  # # get '/some_route', to: 'some_controller#some_action'
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create"
  # # Read one - The `show` route needs to be *after* `new` route.
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # # Update
  # get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch "restaurants/:id", to: "restaurants#update"
  # # Delete
  # delete "restaurants/:id", to: "restaurants#destroy"
