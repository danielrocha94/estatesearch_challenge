Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root "dashboard#home", as: :authenticated_root
    end

    unauthenticated :user do
      root "devise/sessions#new", as: :unauthenticated_root
    end
  end

  resources :posts do
    collection do
      get "new_form"
      get "pay"
      post "unlock"
    end
  end

  get :my_questions, to: "dashboard#my_questions"
  get :my_answers, to: "dashboard#my_answers"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
