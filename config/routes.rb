Rails.application.routes.draw do
  namespace :api do
    resources :arcs, only: [ :index, :show, :create ] do
      resources :episodes, only: [ :index, :create ], shallow: true
    end
    resources :episodes, only: [ :show ]
  end
end
