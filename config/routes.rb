Rails.application.routes.draw do
  root to: 'gardens#home'

  resources :gardens, only: [ :index, :show ] do
    # get 'gardens/:garden_id/plants/new
    resources :plants, only: [ :new, :create ]
  end

  get 'plants/:plant_id/plant_tags/new', to: 'plant_tags#new',    as: 'new_plant_tag'
  post 'plants/:plant_id/plant_tags',    to: 'plant_tags#create', as: 'plant_plant_tags'
end
