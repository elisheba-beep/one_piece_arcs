Rails.application.routes.draw do
  namespace :api do
    resources :arcs, only: [ :index, :show, :create ] do
      resources :episodes, only: [ :index, :create ], shallow: true
    end
    resources :episodes, only: [:show] do
      get "by_episode_number/:episode_number", to: "episodes#by_episode_number", on: :collection
    end
  end
end
