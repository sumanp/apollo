Rails.application.routes.draw do
  post "/enrollment_requests", to: "enrollments#enroll", as: "enrollment_requests"
  resources :enrollments
  resources :batches
  resources :schools do
    resources :courses
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "schools#index"
end
