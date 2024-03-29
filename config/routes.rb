Rails.application.routes.draw do 
  get 'progression/index'
  get 'exercise/index' 
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
	get 'treinos-anteriores' => 'trainings#index', as: :trainings
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
