Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show] do
        resources :schedules, only: [:index, :create]  # /api/v1/users/:user_id/schedules
      end

      resources :schedules, only: [:show] do
        resources :schedule_shows, only: [:index, :destroy]  # /api/v1/schedules/:schedule_id/schedule_shows
      end
    end
  end
end
