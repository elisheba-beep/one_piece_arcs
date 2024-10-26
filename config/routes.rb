Rails.application.routes.draw do
  namespace :api do
    resources :arcs, only: [:index, :show] do
      resources :episodes, only: [:index], shallow: true do
        get "by_episode_number/:episode_number", to: "episodes#show_by_number", on: :collection
      end
    end
    resources :episodes, only: [:show]
  end
end
