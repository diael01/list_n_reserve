SportsReservations::Application.routes.draw do
  resources :prices

  resources :reservations

get "/tennis_facilities/search"
  resources :tennis_facilities

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end