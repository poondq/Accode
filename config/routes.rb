Rails.application.routes.draw do

  get 'traveller/index'

	resources :dashboard, :profile, :setting, :transaction, :traveller

  devise_for :users, :travellers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "dashboard#index"

end
