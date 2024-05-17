Rails.application.routes.draw do
  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
    registrations: 'admin/registrations'
  }

  get 'articles/index'
  get 'articles/education'
  get 'articles/work'
  get 'articles/adminpage'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/articles" , to: "articles#index"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "articles#index"
end
