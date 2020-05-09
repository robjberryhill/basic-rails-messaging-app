Rails.application.routes.draw do
  root "chatroom#index"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  post "message", to: "messages#create"

  # Need to mount the ActionCable server on this route.
  # Communication for the chatroom channel is handles on this route.
  mount ActionCable.server, at: "/cable"
end
