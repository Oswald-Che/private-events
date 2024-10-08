Rails.application.routes.draw do
  devise_for :users, controllers: {
 #  sessions: "users/sessions",
                       }
  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show] do
  end

  resources :events do
    resources :events_users, only: [:new, :create, :destroy]
  end
  root "events#index"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
