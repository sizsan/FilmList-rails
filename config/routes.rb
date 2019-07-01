Rails.application.routes.draw do
  root 'films#index'
  get 'films', to: "films#index", as: 'films'
  get 'films/new', to: "films#new", as: "new_film"
  post 'films', to: 'films#create'
end
