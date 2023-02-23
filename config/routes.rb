Rails.application.routes.draw do
  root to: 'gardens#home'

  resources :gardens, only: [ :index, :show ] do
    # get 'gardens/:garden_id/plants/new
    resources :plants, only: [ :new, :create ]
  end
end
