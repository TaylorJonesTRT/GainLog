Rails.application.routes.draw do
  get 'rep_sets/new'
  get 'rep_sets/create'
  get 'rep_sets/edit'
  get 'rep_sets/update'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "workouts#index"

  resources :workouts
  resources :exercises
  resources :trainings

end
