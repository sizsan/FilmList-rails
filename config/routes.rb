Rails.application.routes.draw do
  root 'films#index'
  get '/films', to: "films#index"
  # get 'flims/new', to: "flims#new" as: "new_film"
end
