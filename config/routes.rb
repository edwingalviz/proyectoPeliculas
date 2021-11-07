Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "movies#index"
  get "/movies", to: "movies#index"

  get "", to: "movies#index"
  post "movies", to: "movies#create"

  get "/buscar", to: "movies#show"

  get "", to: "reservations#index"
  get "/movies", to: "reservations#index"
  get "/listaReservation", to: "reservations#show"
  get "/listaReservas", to: "reservations#mostrarReservas"
  

  post "reservations", to: "reservations#create"
  
  
  
end
