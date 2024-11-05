Rails.application.routes.draw do

  # post '/push/send_message', controller: 'push', action: :send_message
  resources :push do
    collection do
      post 'send_message'
    end
  end


  resources :game do
    collection do
      get 'tic_tac_toe'
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
